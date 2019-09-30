jQuery(function($) {

    'use strict';

    var _Blog = window._Blog || {};

    // _Blog.prettify = function() {
    //     $('pre').addClass('prettyprint linenums').attr('style', 'overflow:auto;');
    //     window.prettyPrint && prettyPrint();
    // };

    _Blog.externalUrl = function() {
        $.expr[':'].external = function(obj) {
            return !obj.href.match(/^mailto\:/) &&
                (obj.hostname != location.hostname);
        };
        $('a:external').addClass('external');
        $(".external").attr('target', '_blank');

    }

    _Blog.changeTitle = function() {
        var currentTitle = document.title;
        window.onblur = function() {
            document.title = currentTitle;
        }
        window.onfocus = function() {
            document.title = currentTitle;
        }
    };

    _Blog.toggleMobileMenu = function() {
        $('.menu-toggle').on('click', () => {
            $('.menu-toggle').toggleClass('active')
            $('#mobile-menu').toggleClass('active')
        })
    }

    _Blog.isBgAndDarkThemeEnabel = function() {
        if (location.pathname === "/") {
            $('body').addClass('dark-theme');
            $('main').addClass('background');
        }
    }

    _Blog.toggleJournalComment = function() {
        $('.journal-comment-btn').on('click', (e)=> {
            $('#journal-comment-'+ e.currentTarget.dataset.id).toggle();
        })
    }

    $(document).ready(function() {
        // _Blog.prettify()
        _Blog.changeTitle()
        _Blog.toggleMobileMenu()
        _Blog.isBgAndDarkThemeEnabel()
        _Blog.toggleJournalComment()
    });
});
