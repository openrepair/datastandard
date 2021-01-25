/*-------------------------------------------------------------------------------*
 * Script for onClick trigger functionality used by flag images
 * Script modified from original GTranslate plugin created by Edvard Ananyan at http://edo.webmaster.am
 * GTranslate Free Version is licensed under GNU/GPL license
 *-------------------------------------------------------------------------------*/

function GLTFireEvent(lang_pair, lang_dest) {
    try {
        if (document.createEvent) {
            var event = document.createEvent("HTMLEvents");
            event.initEvent(lang_dest, true, true);
            lang_pair.dispatchEvent(event)
        } else {
            var event = document.createEventObject();
            lang_pair.fireEvent('on' + lang_dest, event)
        }
    } catch (e) {}
}

function doGoogleLanguageTranslator(lang_pair) {
    if(window.glt_request_uri) return true;

    if (lang_pair.value) lang_pair = lang_pair.value;
    if (lang_pair == '') return;
    var lang_dest = lang_pair.split('|')[1];
    var event;
    var classic = jQuery('.goog-te-combo');
    var simple = jQuery('.goog-te-menu-frame:first');
    var simpleValue = simple.contents().find('.goog-te-menu2-item span.text:contains('+lang_text+')');
    if (classic.length == 0) {
      for (var i = 0; i < simple.length; i++) {
        event = simple[i];
        //alert('Simple is active.');
      }
    } else {
      for (var i = 0; i < classic.length; i++) {
        event = classic[i];
        //alert('Classic is active.');
      }
    }
    if (document.getElementById('google_language_translator') != null) {
      if (classic.length != 0) {
        if (lang_prefix != default_lang) {
          event.value = lang_dest;
          GLTFireEvent(event, 'change');
        } else {
          jQuery('.goog-te-banner-frame:first').contents().find('.goog-close-link').get(0).click();
        }
      } else {
        event.value = lang_dest;
        if (lang_prefix != default_lang) {
          simpleValue.click();
        } else {
          jQuery('.goog-te-banner-frame:first').contents().find('.goog-close-link').get(0).click();
        }
      }
    }
}

jQuery(document).ready(function($) {
  $('#glt-translate-trigger,#glt-translate-trigger font').toolbar({
    content: '#flags',
    position: 'top',
    hideOnClick: true,
    event: 'click',
    style: 'primary'
  });

  $('#glt-translate-trigger').on('toolbarItemClick',function(event) {
    $(this).removeClass('pressed');
  });
});

/**
 * Toolbar.js
 *
 * @fileoverview  jQuery plugin that creates tooltip style toolbars.
 * @link          http://paulkinzett.github.com/toolbar/
 * @author        Paul Kinzett (http://kinzett.co.nz/)
 * @version       1.1.0
 * @requires      jQuery 1.7+
 *
 * @license jQuery Toolbar Plugin v1.1.0
 * http://paulkinzett.github.com/toolbar/
 * Copyright 2013 - 2015 Paul Kinzett (http://kinzett.co.nz/)
 * Released under the MIT license.
 * <https://raw.github.com/paulkinzett/toolbar/master/LICENSE.txt>
 */

if ( typeof Object.create !== 'function' ) {
    Object.create = function( obj ) {
        function F() {}
        F.prototype = obj;
        return new F();
    };
}

(function( $, window, document, undefined ) {

    var ToolBar = {
        init: function( options, elem ) {
            var self = this;
            self.elem = elem;
            self.$elem = $( elem );
            self.options = $.extend( {}, $.fn.toolbar.options, options );
            self.metadata = self.$elem.data();
            self.overrideOptions();
            self.toolbar = $('<div class="tool-container" />')
                .addClass('tool-'+self.options.position)
                .addClass('toolbar-'+self.options.style)
                .append('<div class="tool-items" />')
                .append('<div class="arrow" />')
                .appendTo('body')
                .css('opacity', 0)
                .hide();
            self.toolbar_arrow = self.toolbar.find('.arrow');
            self.initializeToolbar();
        },

        overrideOptions: function() {
            var self = this;

            $.each( self.options, function( $option ) {
                if (typeof(self.$elem.data('toolbar-'+$option)) != "undefined") {
                    self.options[$option] = self.$elem.data('toolbar-'+$option);
                }
            });
        },

        initializeToolbar: function() {
            var self = this;
            self.populateContent();
            self.setTrigger();
            self.toolbarWidth = self.toolbar.width();
        },

        setTrigger: function() {
            var self = this;

            if (self.options.event == 'onload') {
                $(window).load(function(event) {
                    event.preventDefault();
                    self.show();
                });
            }

            if (self.options.event == 'click') {
                self.$elem.on('click', function(event) {
                    event.preventDefault();
                    if(self.$elem.hasClass('pressed')) {
                        self.hide();
                    } else {
                        self.show();
                    }
                });

                if (self.options.hideOnClick) {
                    $('html').on("click.toolbar", function ( event ) {
                        if (event.target != self.elem &&
                            self.$elem.has(event.target).length === 0 &&
                            self.toolbar.has(event.target).length === 0 &&
                            self.toolbar.is(":visible")) {
                            self.hide();
                        }
                    });
                }
            }

            if (self.options.hover) {
                var moveTime;

                function decideTimeout () {
                    if (self.$elem.hasClass('pressed')) {
                        moveTime = setTimeout(function() {
                            self.hide();
                        }, 150);
                    } else {
                        clearTimeout(moveTime);
                    };
                };

                self.$elem.on({
                    mouseenter: function(event) {
                        if (self.$elem.hasClass('pressed')) {
                            clearTimeout(moveTime);
                        } else {
                            self.show();
                        }
                    }
                });

                self.$elem.parent().on({
                    mouseleave: function(event){ decideTimeout(); }
                });

                $('.tool-container').on({
                    mouseenter: function(event){ clearTimeout(moveTime); },
                    mouseleave: function(event){ decideTimeout(); }
                });
            }

            $(window).resize(function( event ) {
                event.stopPropagation();

                if ( self.toolbar.is(":visible") ) {
                    self.toolbarCss = self.getCoordinates(self.options.position, 20);
                    self.collisionDetection();
                    self.toolbar.css( self.toolbarCss );
                    self.toolbar_arrow.css( self.arrowCss );
                }
            });
        },

        populateContent: function() {
            var self = this;
            var location = self.toolbar.find('.tool-items');
            var content = $(self.options.content).clone( true ).find('a').addClass('tool-item');

            location.html(content);
            location.find('.tool-item').on('click', function(event) {
                if(typeof window.glt_request_uri == 'undefined')
                    event.preventDefault();
                self.$elem.trigger('toolbarItemClick', this);
            });
        },

        calculatePosition: function() {
            var self = this;
                self.arrowCss = {};
                self.toolbarCss = self.getCoordinates(self.options.position, self.options.adjustment);
                self.toolbarCss.position = 'fixed';
                self.toolbarCss.zIndex = self.options.zIndex;
                self.collisionDetection();
                self.toolbar.css(self.toolbarCss);
                self.toolbar_arrow.css(self.arrowCss);
        },

        getCoordinates: function( position, adjustment ) {
            var self = this;

            self.coordinates = self.$elem.offset();

            if (self.options.adjustment && self.options.adjustment[self.options.position]) {
                adjustment = self.options.adjustment[self.options.position] + adjustment;
            }

            switch(self.options.position) {
                case 'top':
                    return {
                        left: self.coordinates.left-(self.toolbar.width()/2)+(self.$elem.outerWidth()/2),
                        top: self.coordinates.top-self.$elem.outerHeight()-adjustment,
                        right: 'auto'
                    };

                case 'left':
                    return {
                        left: self.coordinates.left-(self.toolbar.width()/2)-(self.$elem.outerWidth()/2)-adjustment,
                        top: self.coordinates.top-(self.toolbar.height()/2)+(self.$elem.outerHeight()/2),
                        right: 'auto'
                    };

                case 'right':
                    return {
                        left: self.coordinates.left+(self.toolbar.width()/2)+(self.$elem.outerWidth()/2)+adjustment,
                        top: self.coordinates.top-(self.toolbar.height()/2)+(self.$elem.outerHeight()/2),
                        right: 'auto'
                    };

                case 'bottom':
                    return {
                        left: self.coordinates.left-(self.toolbar.width()/2)+(self.$elem.outerWidth()/2),
                        top: self.coordinates.top+self.$elem.outerHeight()+adjustment,
                        right: 'auto'
                    };
            }
        },

        collisionDetection: function() {
            var self = this;
            var edgeOffset = 20;

            if(self.options.position == 'top' || self.options.position == 'bottom') {
                self.arrowCss = {left: '50%', right: '50%'};
                if( self.toolbarCss.left < edgeOffset ) {
                    self.toolbarCss.left = edgeOffset;
                    self.arrowCss.left = self.$elem.offset().left + self.$elem.width()/2-(edgeOffset);
                }

                else if(($(window).width() - (self.toolbarCss.left + self.toolbarWidth)) < edgeOffset) {
                    self.toolbarCss.right = edgeOffset;
                    self.toolbarCss.left = 'auto';
                    self.arrowCss.left = 'auto';
                    self.arrowCss.right = ($(window).width()-self.$elem.offset().left)-(self.$elem.width()/2)-(edgeOffset)-5;
                }
            }
        },

        show: function() {
            var self = this;
            self.$elem.addClass('pressed');
            self.calculatePosition();
            self.toolbar.show().css({'opacity': 1}).addClass('animate-'+self.options.animation);
            self.$elem.trigger('toolbarShown');
        },

        hide: function() {
            var self = this;
            var animation = {'opacity': 0};
            self.$elem.removeClass('pressed');
            switch(self.options.position) {
                case 'top':
                    animation.top = '+=20';
                    break;
                case 'left':
                    animation.left = '+=20';
                    break;
                case 'right':
                    animation.left = '-=20';
                    break;
                case 'bottom':
                    animation.top = '-=20';
                    break;
            }
            self.toolbar.animate(animation, 200, function() {
                self.toolbar.hide();
            });
            self.$elem.trigger('toolbarHidden');
        },

        getToolbarElement: function () {
            return this.toolbar.find('.tool-items');
        }
    };

    $.fn.toolbar = function( options ) {
        if ($.isPlainObject( options )) {
            return this.each(function() {
                var toolbarObj = Object.create( ToolBar );
                toolbarObj.init( options, this );
                $(this).data('toolbarObj', toolbarObj);
            });
        } else if ( typeof options === 'string' && options.indexOf('_') !== 0 ) {
            var toolbarObj = $(this).data('toolbarObj');
            var method = toolbarObj[options];
            return method.apply(toolbarObj, $.makeArray(arguments).slice(1));
        }
    };

    $.fn.toolbar.options = {
        content: '#myContent',
        position: 'top',
        hideOnClick: false,
        zIndex: 120,
        hover: false,
        style: 'default',
        animation: 'standard',
        adjustment: 10
    };
}) ( jQuery, window, document );

jQuery(function($) {
  $('#flags a, a.single-language, .tool-items a').each(function() {
    $(this).attr('data-lang', $(this).attr('title'));
  });

  $(document.body).on("click", "a.flag", function() {
    lang_text = $(this).attr('data-lang');
    default_lang = window.glt_default_lang || $('#google_language_translator').attr('class').split("-").pop();
    lang_prefix = $(this).attr("class").split(" ")[2];
    lang_prefix == default_lang ? l() : n();
    function l() {
      doGoogleLanguageTranslator(default_lang + "|" + default_lang);
    }
    function n() {
      doGoogleLanguageTranslator(default_lang + "|" + lang_prefix);
    }
    $(".tool-container").hide();
  });

  if(window.glt_request_uri) {
    $('#google_language_translator select').on('change', function() {
        doGLTTranslate($(this).val());
    })
  }
});

