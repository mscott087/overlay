# __Overlay - jQuery Plugin__
This plugin aims to allow developers to take content already used in an application and place it inside an overlay to present the website in a minimal and tablet friendly way.

## __Requirements__
The only dependency requirement of this plugin is **jQuery**.

## __Installation__
All you need to install this plugin is to include the provided CSS/JS files:
* `<link rel="stylesheet" href="overlay.css" />`
* `<script src="overlay.js" />`  

&nbsp;

# __Usage__
```javascript
$(element).overlay(Object);
```

&nbsp;

# __Default Options__
```javascript
{
    enabled: true,
    showProgress: true,
    steps: []
}
```

&nbsp;

# __Customize Default Options__ 
Here is an example of how to customize plugin defaults. 
```javascript
$.fn.overlay.defaults = {
    enabled: false // Example: Globally disable plugin
}
```


&nbsp;

# __Available Options__
```javascript
{
    enabled: Boolean,
    footer: $(element),
    header: $(element),
    hide: $(element),
    remove: $(element),
    showProgress: Boolean,
    steps: [
        {
            title: String,
            content: $(element)
        },
        {
            title: String,
            content: [
                $(element1),
                $(element2),
                $(element3)
            ]
        }
    ],
    offsetTop: function(){
        return Number
    },
    offsetRight: function(){
        return Number
    },
    offsetBottom: function(){
        return Number
    },
    offsetLeft: function(){
        return Number
    },
}
```


## __enabled__
Allows you to enable/disable the entire plugin. If this is disabled - the website will fallback to its default functionality.

## __footer__
With this option you can append specifiy content that will appear at the **top** of every step. An example would be if there needs to be header image.

## __header__
With this option you can append specifiy content that will appear at the **bottom** of every step. An example would be if there needs to be sponsor images or related links.

## __hide__
Hide content via the plugin. This can also alternatively be done with standard jQuery approach. However the plugin will attempt to hide the elements on each step change to ensure the elements are always hidden - even on step changes.

## __remove__
Remove content via the plugin. This can also alternatively be done with standard jQuery approach. However the plugin will attempt to remove the elements on each step change to ensure the elements are always removed - even on step changes.

## __showProgress__
Allows the ability to programatically hide the Progress bar

## __steps__
An array of objects that will represent the "steps" in your application. If this option does not exist - the plugin by default will take the target element of the plugin and place ALL content in the overlay.

## __offsetTop__, __offsetRight__, __offsetBottom__, __offsetLeft__
Set the offset of your content by a certain value. The value returned will be the amount of pixels the content will be offset. This is called on page load as well as on window resize.

&nbsp;

# __Lifecycle Events__
With the following lifecycle events you should be able to manipulate the page anyway you see fit through options.
```javascript
{
    onInit: function(){

    },
    onStepChange: function(){

    },
    onValidate: function(){
        return Boolean
    },
    onSubmit: function(){

    },
}
```

## __onInit__
A function that gets called after the the plugin has completed rendering and is displaying the first step.

## __onStepChange__
A function that gets called after the plug has proceeded to the next step and has completed rendering the next step.

## __onValidate__
A function that gets called when trying to move between steps/pages. This function must return a boolean value.

## __onSubmit__
A function that gets called after the onValidate function returns 'true'. This will allow you to customize what will happen when attempting to move to the next page.
