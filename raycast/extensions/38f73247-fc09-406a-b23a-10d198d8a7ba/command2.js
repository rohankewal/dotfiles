"use strict";var o=Object.defineProperty;var u=Object.getOwnPropertyDescriptor;var m=Object.getOwnPropertyNames;var l=Object.prototype.hasOwnProperty;var p=(t,e)=>{for(var s in e)o(t,s,{get:e[s],enumerable:!0})},c=(t,e,s,r)=>{if(e&&typeof e=="object"||typeof e=="function")for(let n of m(e))!l.call(t,n)&&n!==s&&o(t,n,{get:()=>e[n],enumerable:!(r=u(e,n))||r.enumerable});return t};var d=t=>c(o({},"__esModule",{value:!0}),t);var f={};p(f,{default:()=>i});module.exports=d(f);var a=require("@raycast/api");async function i(){let e=(0,a.getPreferenceValues)().typercommand2;return e?(await(0,a.updateCommandMetadata)({subtitle:`Pasting: ${e}`}),a.Clipboard.paste(e)):(await(0,a.openCommandPreferences)(),await(0,a.showHUD)("\u274C Please set a text to paste"))}0&&(module.exports={});
