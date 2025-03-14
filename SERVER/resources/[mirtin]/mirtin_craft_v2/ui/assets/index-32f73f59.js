function lp(e,t){for(var n=0;n<t.length;n++){const r=t[n];if(typeof r!="string"&&!Array.isArray(r)){for(const i in r)if(i!=="default"&&!(i in e)){const o=Object.getOwnPropertyDescriptor(r,i);o&&Object.defineProperty(e,i,o.get?o:{enumerable:!0,get:()=>r[i]})}}}return Object.freeze(Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}))}(function(){const t=document.createElement("link").relList;if(t&&t.supports&&t.supports("modulepreload"))return;for(const i of document.querySelectorAll('link[rel="modulepreload"]'))r(i);new MutationObserver(i=>{for(const o of i)if(o.type==="childList")for(const l of o.addedNodes)l.tagName==="LINK"&&l.rel==="modulepreload"&&r(l)}).observe(document,{childList:!0,subtree:!0});function n(i){const o={};return i.integrity&&(o.integrity=i.integrity),i.referrerpolicy&&(o.referrerPolicy=i.referrerpolicy),i.crossorigin==="use-credentials"?o.credentials="include":i.crossorigin==="anonymous"?o.credentials="omit":o.credentials="same-origin",o}function r(i){if(i.ep)return;i.ep=!0;const o=n(i);fetch(i.href,o)}})();function ap(e){return e&&e.__esModule&&Object.prototype.hasOwnProperty.call(e,"default")?e.default:e}var _l={},Ml={},sp={get exports(){return Ml},set exports(e){Ml=e}},tt={},S={},up={get exports(){return S},set exports(e){S=e}},H={};/**
 * @license React
 * react.production.min.js
 *
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */var ni=Symbol.for("react.element"),cp=Symbol.for("react.portal"),fp=Symbol.for("react.fragment"),dp=Symbol.for("react.strict_mode"),pp=Symbol.for("react.profiler"),hp=Symbol.for("react.provider"),mp=Symbol.for("react.context"),gp=Symbol.for("react.forward_ref"),vp=Symbol.for("react.suspense"),yp=Symbol.for("react.memo"),wp=Symbol.for("react.lazy"),Ws=Symbol.iterator;function Ap(e){return e===null||typeof e!="object"?null:(e=Ws&&e[Ws]||e["@@iterator"],typeof e=="function"?e:null)}var kc={isMounted:function(){return!1},enqueueForceUpdate:function(){},enqueueReplaceState:function(){},enqueueSetState:function(){}},xc=Object.assign,Sc={};function ir(e,t,n){this.props=e,this.context=t,this.refs=Sc,this.updater=n||kc}ir.prototype.isReactComponent={};ir.prototype.setState=function(e,t){if(typeof e!="object"&&typeof e!="function"&&e!=null)throw Error("setState(...): takes an object of state variables to update or a function which returns an object of state variables.");this.updater.enqueueSetState(this,e,t,"setState")};ir.prototype.forceUpdate=function(e){this.updater.enqueueForceUpdate(this,e,"forceUpdate")};function Cc(){}Cc.prototype=ir.prototype;function ja(e,t,n){this.props=e,this.context=t,this.refs=Sc,this.updater=n||kc}var Da=ja.prototype=new Cc;Da.constructor=ja;xc(Da,ir.prototype);Da.isPureReactComponent=!0;var Qs=Array.isArray,Ec=Object.prototype.hasOwnProperty,Fa={current:null},Nc={key:!0,ref:!0,__self:!0,__source:!0};function Rc(e,t,n){var r,i={},o=null,l=null;if(t!=null)for(r in t.ref!==void 0&&(l=t.ref),t.key!==void 0&&(o=""+t.key),t)Ec.call(t,r)&&!Nc.hasOwnProperty(r)&&(i[r]=t[r]);var a=arguments.length-2;if(a===1)i.children=n;else if(1<a){for(var s=Array(a),u=0;u<a;u++)s[u]=arguments[u+2];i.children=s}if(e&&e.defaultProps)for(r in a=e.defaultProps,a)i[r]===void 0&&(i[r]=a[r]);return{$$typeof:ni,type:e,key:o,ref:l,props:i,_owner:Fa.current}}function kp(e,t){return{$$typeof:ni,type:e.type,key:t,ref:e.ref,props:e.props,_owner:e._owner}}function $a(e){return typeof e=="object"&&e!==null&&e.$$typeof===ni}function xp(e){var t={"=":"=0",":":"=2"};return"$"+e.replace(/[=:]/g,function(n){return t[n]})}var Ks=/\/+/g;function nl(e,t){return typeof e=="object"&&e!==null&&e.key!=null?xp(""+e.key):t.toString(36)}function Li(e,t,n,r,i){var o=typeof e;(o==="undefined"||o==="boolean")&&(e=null);var l=!1;if(e===null)l=!0;else switch(o){case"string":case"number":l=!0;break;case"object":switch(e.$$typeof){case ni:case cp:l=!0}}if(l)return l=e,i=i(l),e=r===""?"."+nl(l,0):r,Qs(i)?(n="",e!=null&&(n=e.replace(Ks,"$&/")+"/"),Li(i,t,n,"",function(u){return u})):i!=null&&($a(i)&&(i=kp(i,n+(!i.key||l&&l.key===i.key?"":(""+i.key).replace(Ks,"$&/")+"/")+e)),t.push(i)),1;if(l=0,r=r===""?".":r+":",Qs(e))for(var a=0;a<e.length;a++){o=e[a];var s=r+nl(o,a);l+=Li(o,t,n,s,i)}else if(s=Ap(e),typeof s=="function")for(e=s.call(e),a=0;!(o=e.next()).done;)o=o.value,s=r+nl(o,a++),l+=Li(o,t,n,s,i);else if(o==="object")throw t=String(e),Error("Objects are not valid as a React child (found: "+(t==="[object Object]"?"object with keys {"+Object.keys(e).join(", ")+"}":t)+"). If you meant to render a collection of children, use an array instead.");return l}function fi(e,t,n){if(e==null)return e;var r=[],i=0;return Li(e,r,"","",function(o){return t.call(n,o,i++)}),r}function Sp(e){if(e._status===-1){var t=e._result;t=t(),t.then(function(n){(e._status===0||e._status===-1)&&(e._status=1,e._result=n)},function(n){(e._status===0||e._status===-1)&&(e._status=2,e._result=n)}),e._status===-1&&(e._status=0,e._result=t)}if(e._status===1)return e._result.default;throw e._result}var Fe={current:null},Oi={transition:null},Cp={ReactCurrentDispatcher:Fe,ReactCurrentBatchConfig:Oi,ReactCurrentOwner:Fa};H.Children={map:fi,forEach:function(e,t,n){fi(e,function(){t.apply(this,arguments)},n)},count:function(e){var t=0;return fi(e,function(){t++}),t},toArray:function(e){return fi(e,function(t){return t})||[]},only:function(e){if(!$a(e))throw Error("React.Children.only expected to receive a single React element child.");return e}};H.Component=ir;H.Fragment=fp;H.Profiler=pp;H.PureComponent=ja;H.StrictMode=dp;H.Suspense=vp;H.__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED=Cp;H.cloneElement=function(e,t,n){if(e==null)throw Error("React.cloneElement(...): The argument must be a React element, but you passed "+e+".");var r=xc({},e.props),i=e.key,o=e.ref,l=e._owner;if(t!=null){if(t.ref!==void 0&&(o=t.ref,l=Fa.current),t.key!==void 0&&(i=""+t.key),e.type&&e.type.defaultProps)var a=e.type.defaultProps;for(s in t)Ec.call(t,s)&&!Nc.hasOwnProperty(s)&&(r[s]=t[s]===void 0&&a!==void 0?a[s]:t[s])}var s=arguments.length-2;if(s===1)r.children=n;else if(1<s){a=Array(s);for(var u=0;u<s;u++)a[u]=arguments[u+2];r.children=a}return{$$typeof:ni,type:e.type,key:i,ref:o,props:r,_owner:l}};H.createContext=function(e){return e={$$typeof:mp,_currentValue:e,_currentValue2:e,_threadCount:0,Provider:null,Consumer:null,_defaultValue:null,_globalName:null},e.Provider={$$typeof:hp,_context:e},e.Consumer=e};H.createElement=Rc;H.createFactory=function(e){var t=Rc.bind(null,e);return t.type=e,t};H.createRef=function(){return{current:null}};H.forwardRef=function(e){return{$$typeof:gp,render:e}};H.isValidElement=$a;H.lazy=function(e){return{$$typeof:wp,_payload:{_status:-1,_result:e},_init:Sp}};H.memo=function(e,t){return{$$typeof:yp,type:e,compare:t===void 0?null:t}};H.startTransition=function(e){var t=Oi.transition;Oi.transition={};try{e()}finally{Oi.transition=t}};H.unstable_act=function(){throw Error("act(...) is not supported in production builds of React.")};H.useCallback=function(e,t){return Fe.current.useCallback(e,t)};H.useContext=function(e){return Fe.current.useContext(e)};H.useDebugValue=function(){};H.useDeferredValue=function(e){return Fe.current.useDeferredValue(e)};H.useEffect=function(e,t){return Fe.current.useEffect(e,t)};H.useId=function(){return Fe.current.useId()};H.useImperativeHandle=function(e,t,n){return Fe.current.useImperativeHandle(e,t,n)};H.useInsertionEffect=function(e,t){return Fe.current.useInsertionEffect(e,t)};H.useLayoutEffect=function(e,t){return Fe.current.useLayoutEffect(e,t)};H.useMemo=function(e,t){return Fe.current.useMemo(e,t)};H.useReducer=function(e,t,n){return Fe.current.useReducer(e,t,n)};H.useRef=function(e){return Fe.current.useRef(e)};H.useState=function(e){return Fe.current.useState(e)};H.useSyncExternalStore=function(e,t,n){return Fe.current.useSyncExternalStore(e,t,n)};H.useTransition=function(){return Fe.current.useTransition()};H.version="18.2.0";(function(e){e.exports=H})(up);const G=ap(S),Ep=lp({__proto__:null,default:G},[S]);var bl={},Np={get exports(){return bl},set exports(e){bl=e}},Pc={};/**
 * @license React
 * scheduler.production.min.js
 *
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */(function(e){function t(N,b){var j=N.length;N.push(b);e:for(;0<j;){var re=j-1>>>1,I=N[re];if(0<i(I,b))N[re]=b,N[j]=I,j=re;else break e}}function n(N){return N.length===0?null:N[0]}function r(N){if(N.length===0)return null;var b=N[0],j=N.pop();if(j!==b){N[0]=j;e:for(var re=0,I=N.length,O=I>>>1;re<O;){var _=2*(re+1)-1,D=N[_],k=_+1,V=N[k];if(0>i(D,j))k<I&&0>i(V,D)?(N[re]=V,N[k]=j,re=k):(N[re]=D,N[_]=j,re=_);else if(k<I&&0>i(V,j))N[re]=V,N[k]=j,re=k;else break e}}return b}function i(N,b){var j=N.sortIndex-b.sortIndex;return j!==0?j:N.id-b.id}if(typeof performance=="object"&&typeof performance.now=="function"){var o=performance;e.unstable_now=function(){return o.now()}}else{var l=Date,a=l.now();e.unstable_now=function(){return l.now()-a}}var s=[],u=[],f=1,p=null,h=3,g=!1,v=!1,y=!1,x=typeof setTimeout=="function"?setTimeout:null,d=typeof clearTimeout=="function"?clearTimeout:null,c=typeof setImmediate<"u"?setImmediate:null;typeof navigator<"u"&&navigator.scheduling!==void 0&&navigator.scheduling.isInputPending!==void 0&&navigator.scheduling.isInputPending.bind(navigator.scheduling);function m(N){for(var b=n(u);b!==null;){if(b.callback===null)r(u);else if(b.startTime<=N)r(u),b.sortIndex=b.expirationTime,t(s,b);else break;b=n(u)}}function w(N){if(y=!1,m(N),!v)if(n(s)!==null)v=!0,de(C);else{var b=n(u);b!==null&&ae(w,b.startTime-N)}}function C(N,b){v=!1,y&&(y=!1,d(R),R=-1),g=!0;var j=h;try{for(m(b),p=n(s);p!==null&&(!(p.expirationTime>b)||N&&!oe());){var re=p.callback;if(typeof re=="function"){p.callback=null,h=p.priorityLevel;var I=re(p.expirationTime<=b);b=e.unstable_now(),typeof I=="function"?p.callback=I:p===n(s)&&r(s),m(b)}else r(s);p=n(s)}if(p!==null)var O=!0;else{var _=n(u);_!==null&&ae(w,_.startTime-b),O=!1}return O}finally{p=null,h=j,g=!1}}var T=!1,L=null,R=-1,B=5,U=-1;function oe(){return!(e.unstable_now()-U<B)}function Q(){if(L!==null){var N=e.unstable_now();U=N;var b=!0;try{b=L(!0,N)}finally{b?te():(T=!1,L=null)}}else T=!1}var te;if(typeof c=="function")te=function(){c(Q)};else if(typeof MessageChannel<"u"){var ne=new MessageChannel,ce=ne.port2;ne.port1.onmessage=Q,te=function(){ce.postMessage(null)}}else te=function(){x(Q,0)};function de(N){L=N,T||(T=!0,te())}function ae(N,b){R=x(function(){N(e.unstable_now())},b)}e.unstable_IdlePriority=5,e.unstable_ImmediatePriority=1,e.unstable_LowPriority=4,e.unstable_NormalPriority=3,e.unstable_Profiling=null,e.unstable_UserBlockingPriority=2,e.unstable_cancelCallback=function(N){N.callback=null},e.unstable_continueExecution=function(){v||g||(v=!0,de(C))},e.unstable_forceFrameRate=function(N){0>N||125<N?console.error("forceFrameRate takes a positive int between 0 and 125, forcing frame rates higher than 125 fps is not supported"):B=0<N?Math.floor(1e3/N):5},e.unstable_getCurrentPriorityLevel=function(){return h},e.unstable_getFirstCallbackNode=function(){return n(s)},e.unstable_next=function(N){switch(h){case 1:case 2:case 3:var b=3;break;default:b=h}var j=h;h=b;try{return N()}finally{h=j}},e.unstable_pauseExecution=function(){},e.unstable_requestPaint=function(){},e.unstable_runWithPriority=function(N,b){switch(N){case 1:case 2:case 3:case 4:case 5:break;default:N=3}var j=h;h=N;try{return b()}finally{h=j}},e.unstable_scheduleCallback=function(N,b,j){var re=e.unstable_now();switch(typeof j=="object"&&j!==null?(j=j.delay,j=typeof j=="number"&&0<j?re+j:re):j=re,N){case 1:var I=-1;break;case 2:I=250;break;case 5:I=1073741823;break;case 4:I=1e4;break;default:I=5e3}return I=j+I,N={id:f++,callback:b,priorityLevel:N,startTime:j,expirationTime:I,sortIndex:-1},j>re?(N.sortIndex=j,t(u,N),n(s)===null&&N===n(u)&&(y?(d(R),R=-1):y=!0,ae(w,j-re))):(N.sortIndex=I,t(s,N),v||g||(v=!0,de(C))),N},e.unstable_shouldYield=oe,e.unstable_wrapCallback=function(N){var b=h;return function(){var j=h;h=b;try{return N.apply(this,arguments)}finally{h=j}}}})(Pc);(function(e){e.exports=Pc})(Np);/**
 * @license React
 * react-dom.production.min.js
 *
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */var Tc=S,et=bl;function E(e){for(var t="https://reactjs.org/docs/error-decoder.html?invariant="+e,n=1;n<arguments.length;n++)t+="&args[]="+encodeURIComponent(arguments[n]);return"Minified React error #"+e+"; visit "+t+" for the full message or use the non-minified dev environment for full errors and additional helpful warnings."}var Ic=new Set,Mr={};function Cn(e,t){Xn(e,t),Xn(e+"Capture",t)}function Xn(e,t){for(Mr[e]=t,e=0;e<t.length;e++)Ic.add(t[e])}var It=!(typeof window>"u"||typeof window.document>"u"||typeof window.document.createElement>"u"),Ul=Object.prototype.hasOwnProperty,Rp=/^[:A-Z_a-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02FF\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD][:A-Z_a-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02FF\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD\-.0-9\u00B7\u0300-\u036F\u203F-\u2040]*$/,Gs={},Ys={};function Pp(e){return Ul.call(Ys,e)?!0:Ul.call(Gs,e)?!1:Rp.test(e)?Ys[e]=!0:(Gs[e]=!0,!1)}function Tp(e,t,n,r){if(n!==null&&n.type===0)return!1;switch(typeof t){case"function":case"symbol":return!0;case"boolean":return r?!1:n!==null?!n.acceptsBooleans:(e=e.toLowerCase().slice(0,5),e!=="data-"&&e!=="aria-");default:return!1}}function Ip(e,t,n,r){if(t===null||typeof t>"u"||Tp(e,t,n,r))return!0;if(r)return!1;if(n!==null)switch(n.type){case 3:return!t;case 4:return t===!1;case 5:return isNaN(t);case 6:return isNaN(t)||1>t}return!1}function $e(e,t,n,r,i,o,l){this.acceptsBooleans=t===2||t===3||t===4,this.attributeName=r,this.attributeNamespace=i,this.mustUseProperty=n,this.propertyName=e,this.type=t,this.sanitizeURL=o,this.removeEmptyString=l}var Le={};"children dangerouslySetInnerHTML defaultValue defaultChecked innerHTML suppressContentEditableWarning suppressHydrationWarning style".split(" ").forEach(function(e){Le[e]=new $e(e,0,!1,e,null,!1,!1)});[["acceptCharset","accept-charset"],["className","class"],["htmlFor","for"],["httpEquiv","http-equiv"]].forEach(function(e){var t=e[0];Le[t]=new $e(t,1,!1,e[1],null,!1,!1)});["contentEditable","draggable","spellCheck","value"].forEach(function(e){Le[e]=new $e(e,2,!1,e.toLowerCase(),null,!1,!1)});["autoReverse","externalResourcesRequired","focusable","preserveAlpha"].forEach(function(e){Le[e]=new $e(e,2,!1,e,null,!1,!1)});"allowFullScreen async autoFocus autoPlay controls default defer disabled disablePictureInPicture disableRemotePlayback formNoValidate hidden loop noModule noValidate open playsInline readOnly required reversed scoped seamless itemScope".split(" ").forEach(function(e){Le[e]=new $e(e,3,!1,e.toLowerCase(),null,!1,!1)});["checked","multiple","muted","selected"].forEach(function(e){Le[e]=new $e(e,3,!0,e,null,!1,!1)});["capture","download"].forEach(function(e){Le[e]=new $e(e,4,!1,e,null,!1,!1)});["cols","rows","size","span"].forEach(function(e){Le[e]=new $e(e,6,!1,e,null,!1,!1)});["rowSpan","start"].forEach(function(e){Le[e]=new $e(e,5,!1,e.toLowerCase(),null,!1,!1)});var Ba=/[\-:]([a-z])/g;function Ha(e){return e[1].toUpperCase()}"accent-height alignment-baseline arabic-form baseline-shift cap-height clip-path clip-rule color-interpolation color-interpolation-filters color-profile color-rendering dominant-baseline enable-background fill-opacity fill-rule flood-color flood-opacity font-family font-size font-size-adjust font-stretch font-style font-variant font-weight glyph-name glyph-orientation-horizontal glyph-orientation-vertical horiz-adv-x horiz-origin-x image-rendering letter-spacing lighting-color marker-end marker-mid marker-start overline-position overline-thickness paint-order panose-1 pointer-events rendering-intent shape-rendering stop-color stop-opacity strikethrough-position strikethrough-thickness stroke-dasharray stroke-dashoffset stroke-linecap stroke-linejoin stroke-miterlimit stroke-opacity stroke-width text-anchor text-decoration text-rendering underline-position underline-thickness unicode-bidi unicode-range units-per-em v-alphabetic v-hanging v-ideographic v-mathematical vector-effect vert-adv-y vert-origin-x vert-origin-y word-spacing writing-mode xmlns:xlink x-height".split(" ").forEach(function(e){var t=e.replace(Ba,Ha);Le[t]=new $e(t,1,!1,e,null,!1,!1)});"xlink:actuate xlink:arcrole xlink:role xlink:show xlink:title xlink:type".split(" ").forEach(function(e){var t=e.replace(Ba,Ha);Le[t]=new $e(t,1,!1,e,"http://www.w3.org/1999/xlink",!1,!1)});["xml:base","xml:lang","xml:space"].forEach(function(e){var t=e.replace(Ba,Ha);Le[t]=new $e(t,1,!1,e,"http://www.w3.org/XML/1998/namespace",!1,!1)});["tabIndex","crossOrigin"].forEach(function(e){Le[e]=new $e(e,1,!1,e.toLowerCase(),null,!1,!1)});Le.xlinkHref=new $e("xlinkHref",1,!1,"xlink:href","http://www.w3.org/1999/xlink",!0,!1);["src","href","action","formAction"].forEach(function(e){Le[e]=new $e(e,1,!1,e.toLowerCase(),null,!0,!0)});function Va(e,t,n,r){var i=Le.hasOwnProperty(t)?Le[t]:null;(i!==null?i.type!==0:r||!(2<t.length)||t[0]!=="o"&&t[0]!=="O"||t[1]!=="n"&&t[1]!=="N")&&(Ip(t,n,i,r)&&(n=null),r||i===null?Pp(t)&&(n===null?e.removeAttribute(t):e.setAttribute(t,""+n)):i.mustUseProperty?e[i.propertyName]=n===null?i.type===3?!1:"":n:(t=i.attributeName,r=i.attributeNamespace,n===null?e.removeAttribute(t):(i=i.type,n=i===3||i===4&&n===!0?"":""+n,r?e.setAttributeNS(r,t,n):e.setAttribute(t,n))))}var _t=Tc.__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED,di=Symbol.for("react.element"),zn=Symbol.for("react.portal"),Ln=Symbol.for("react.fragment"),Wa=Symbol.for("react.strict_mode"),jl=Symbol.for("react.profiler"),zc=Symbol.for("react.provider"),Lc=Symbol.for("react.context"),Qa=Symbol.for("react.forward_ref"),Dl=Symbol.for("react.suspense"),Fl=Symbol.for("react.suspense_list"),Ka=Symbol.for("react.memo"),Ut=Symbol.for("react.lazy"),Oc=Symbol.for("react.offscreen"),Xs=Symbol.iterator;function cr(e){return e===null||typeof e!="object"?null:(e=Xs&&e[Xs]||e["@@iterator"],typeof e=="function"?e:null)}var me=Object.assign,rl;function yr(e){if(rl===void 0)try{throw Error()}catch(n){var t=n.stack.trim().match(/\n( *(at )?)/);rl=t&&t[1]||""}return`
`+rl+e}var il=!1;function ol(e,t){if(!e||il)return"";il=!0;var n=Error.prepareStackTrace;Error.prepareStackTrace=void 0;try{if(t)if(t=function(){throw Error()},Object.defineProperty(t.prototype,"props",{set:function(){throw Error()}}),typeof Reflect=="object"&&Reflect.construct){try{Reflect.construct(t,[])}catch(u){var r=u}Reflect.construct(e,[],t)}else{try{t.call()}catch(u){r=u}e.call(t.prototype)}else{try{throw Error()}catch(u){r=u}e()}}catch(u){if(u&&r&&typeof u.stack=="string"){for(var i=u.stack.split(`
`),o=r.stack.split(`
`),l=i.length-1,a=o.length-1;1<=l&&0<=a&&i[l]!==o[a];)a--;for(;1<=l&&0<=a;l--,a--)if(i[l]!==o[a]){if(l!==1||a!==1)do if(l--,a--,0>a||i[l]!==o[a]){var s=`
`+i[l].replace(" at new "," at ");return e.displayName&&s.includes("<anonymous>")&&(s=s.replace("<anonymous>",e.displayName)),s}while(1<=l&&0<=a);break}}}finally{il=!1,Error.prepareStackTrace=n}return(e=e?e.displayName||e.name:"")?yr(e):""}function zp(e){switch(e.tag){case 5:return yr(e.type);case 16:return yr("Lazy");case 13:return yr("Suspense");case 19:return yr("SuspenseList");case 0:case 2:case 15:return e=ol(e.type,!1),e;case 11:return e=ol(e.type.render,!1),e;case 1:return e=ol(e.type,!0),e;default:return""}}function $l(e){if(e==null)return null;if(typeof e=="function")return e.displayName||e.name||null;if(typeof e=="string")return e;switch(e){case Ln:return"Fragment";case zn:return"Portal";case jl:return"Profiler";case Wa:return"StrictMode";case Dl:return"Suspense";case Fl:return"SuspenseList"}if(typeof e=="object")switch(e.$$typeof){case Lc:return(e.displayName||"Context")+".Consumer";case zc:return(e._context.displayName||"Context")+".Provider";case Qa:var t=e.render;return e=e.displayName,e||(e=t.displayName||t.name||"",e=e!==""?"ForwardRef("+e+")":"ForwardRef"),e;case Ka:return t=e.displayName||null,t!==null?t:$l(e.type)||"Memo";case Ut:t=e._payload,e=e._init;try{return $l(e(t))}catch{}}return null}function Lp(e){var t=e.type;switch(e.tag){case 24:return"Cache";case 9:return(t.displayName||"Context")+".Consumer";case 10:return(t._context.displayName||"Context")+".Provider";case 18:return"DehydratedFragment";case 11:return e=t.render,e=e.displayName||e.name||"",t.displayName||(e!==""?"ForwardRef("+e+")":"ForwardRef");case 7:return"Fragment";case 5:return t;case 4:return"Portal";case 3:return"Root";case 6:return"Text";case 16:return $l(t);case 8:return t===Wa?"StrictMode":"Mode";case 22:return"Offscreen";case 12:return"Profiler";case 21:return"Scope";case 13:return"Suspense";case 19:return"SuspenseList";case 25:return"TracingMarker";case 1:case 0:case 17:case 2:case 14:case 15:if(typeof t=="function")return t.displayName||t.name||null;if(typeof t=="string")return t}return null}function nn(e){switch(typeof e){case"boolean":case"number":case"string":case"undefined":return e;case"object":return e;default:return""}}function _c(e){var t=e.type;return(e=e.nodeName)&&e.toLowerCase()==="input"&&(t==="checkbox"||t==="radio")}function Op(e){var t=_c(e)?"checked":"value",n=Object.getOwnPropertyDescriptor(e.constructor.prototype,t),r=""+e[t];if(!e.hasOwnProperty(t)&&typeof n<"u"&&typeof n.get=="function"&&typeof n.set=="function"){var i=n.get,o=n.set;return Object.defineProperty(e,t,{configurable:!0,get:function(){return i.call(this)},set:function(l){r=""+l,o.call(this,l)}}),Object.defineProperty(e,t,{enumerable:n.enumerable}),{getValue:function(){return r},setValue:function(l){r=""+l},stopTracking:function(){e._valueTracker=null,delete e[t]}}}}function pi(e){e._valueTracker||(e._valueTracker=Op(e))}function Mc(e){if(!e)return!1;var t=e._valueTracker;if(!t)return!0;var n=t.getValue(),r="";return e&&(r=_c(e)?e.checked?"true":"false":e.value),e=r,e!==n?(t.setValue(e),!0):!1}function Qi(e){if(e=e||(typeof document<"u"?document:void 0),typeof e>"u")return null;try{return e.activeElement||e.body}catch{return e.body}}function Bl(e,t){var n=t.checked;return me({},t,{defaultChecked:void 0,defaultValue:void 0,value:void 0,checked:n??e._wrapperState.initialChecked})}function Js(e,t){var n=t.defaultValue==null?"":t.defaultValue,r=t.checked!=null?t.checked:t.defaultChecked;n=nn(t.value!=null?t.value:n),e._wrapperState={initialChecked:r,initialValue:n,controlled:t.type==="checkbox"||t.type==="radio"?t.checked!=null:t.value!=null}}function bc(e,t){t=t.checked,t!=null&&Va(e,"checked",t,!1)}function Hl(e,t){bc(e,t);var n=nn(t.value),r=t.type;if(n!=null)r==="number"?(n===0&&e.value===""||e.value!=n)&&(e.value=""+n):e.value!==""+n&&(e.value=""+n);else if(r==="submit"||r==="reset"){e.removeAttribute("value");return}t.hasOwnProperty("value")?Vl(e,t.type,n):t.hasOwnProperty("defaultValue")&&Vl(e,t.type,nn(t.defaultValue)),t.checked==null&&t.defaultChecked!=null&&(e.defaultChecked=!!t.defaultChecked)}function Zs(e,t,n){if(t.hasOwnProperty("value")||t.hasOwnProperty("defaultValue")){var r=t.type;if(!(r!=="submit"&&r!=="reset"||t.value!==void 0&&t.value!==null))return;t=""+e._wrapperState.initialValue,n||t===e.value||(e.value=t),e.defaultValue=t}n=e.name,n!==""&&(e.name=""),e.defaultChecked=!!e._wrapperState.initialChecked,n!==""&&(e.name=n)}function Vl(e,t,n){(t!=="number"||Qi(e.ownerDocument)!==e)&&(n==null?e.defaultValue=""+e._wrapperState.initialValue:e.defaultValue!==""+n&&(e.defaultValue=""+n))}var wr=Array.isArray;function Vn(e,t,n,r){if(e=e.options,t){t={};for(var i=0;i<n.length;i++)t["$"+n[i]]=!0;for(n=0;n<e.length;n++)i=t.hasOwnProperty("$"+e[n].value),e[n].selected!==i&&(e[n].selected=i),i&&r&&(e[n].defaultSelected=!0)}else{for(n=""+nn(n),t=null,i=0;i<e.length;i++){if(e[i].value===n){e[i].selected=!0,r&&(e[i].defaultSelected=!0);return}t!==null||e[i].disabled||(t=e[i])}t!==null&&(t.selected=!0)}}function Wl(e,t){if(t.dangerouslySetInnerHTML!=null)throw Error(E(91));return me({},t,{value:void 0,defaultValue:void 0,children:""+e._wrapperState.initialValue})}function qs(e,t){var n=t.value;if(n==null){if(n=t.children,t=t.defaultValue,n!=null){if(t!=null)throw Error(E(92));if(wr(n)){if(1<n.length)throw Error(E(93));n=n[0]}t=n}t==null&&(t=""),n=t}e._wrapperState={initialValue:nn(n)}}function Uc(e,t){var n=nn(t.value),r=nn(t.defaultValue);n!=null&&(n=""+n,n!==e.value&&(e.value=n),t.defaultValue==null&&e.defaultValue!==n&&(e.defaultValue=n)),r!=null&&(e.defaultValue=""+r)}function eu(e){var t=e.textContent;t===e._wrapperState.initialValue&&t!==""&&t!==null&&(e.value=t)}function jc(e){switch(e){case"svg":return"http://www.w3.org/2000/svg";case"math":return"http://www.w3.org/1998/Math/MathML";default:return"http://www.w3.org/1999/xhtml"}}function Ql(e,t){return e==null||e==="http://www.w3.org/1999/xhtml"?jc(t):e==="http://www.w3.org/2000/svg"&&t==="foreignObject"?"http://www.w3.org/1999/xhtml":e}var hi,Dc=function(e){return typeof MSApp<"u"&&MSApp.execUnsafeLocalFunction?function(t,n,r,i){MSApp.execUnsafeLocalFunction(function(){return e(t,n,r,i)})}:e}(function(e,t){if(e.namespaceURI!=="http://www.w3.org/2000/svg"||"innerHTML"in e)e.innerHTML=t;else{for(hi=hi||document.createElement("div"),hi.innerHTML="<svg>"+t.valueOf().toString()+"</svg>",t=hi.firstChild;e.firstChild;)e.removeChild(e.firstChild);for(;t.firstChild;)e.appendChild(t.firstChild)}});function br(e,t){if(t){var n=e.firstChild;if(n&&n===e.lastChild&&n.nodeType===3){n.nodeValue=t;return}}e.textContent=t}var Sr={animationIterationCount:!0,aspectRatio:!0,borderImageOutset:!0,borderImageSlice:!0,borderImageWidth:!0,boxFlex:!0,boxFlexGroup:!0,boxOrdinalGroup:!0,columnCount:!0,columns:!0,flex:!0,flexGrow:!0,flexPositive:!0,flexShrink:!0,flexNegative:!0,flexOrder:!0,gridArea:!0,gridRow:!0,gridRowEnd:!0,gridRowSpan:!0,gridRowStart:!0,gridColumn:!0,gridColumnEnd:!0,gridColumnSpan:!0,gridColumnStart:!0,fontWeight:!0,lineClamp:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,tabSize:!0,widows:!0,zIndex:!0,zoom:!0,fillOpacity:!0,floodOpacity:!0,stopOpacity:!0,strokeDasharray:!0,strokeDashoffset:!0,strokeMiterlimit:!0,strokeOpacity:!0,strokeWidth:!0},_p=["Webkit","ms","Moz","O"];Object.keys(Sr).forEach(function(e){_p.forEach(function(t){t=t+e.charAt(0).toUpperCase()+e.substring(1),Sr[t]=Sr[e]})});function Fc(e,t,n){return t==null||typeof t=="boolean"||t===""?"":n||typeof t!="number"||t===0||Sr.hasOwnProperty(e)&&Sr[e]?(""+t).trim():t+"px"}function $c(e,t){e=e.style;for(var n in t)if(t.hasOwnProperty(n)){var r=n.indexOf("--")===0,i=Fc(n,t[n],r);n==="float"&&(n="cssFloat"),r?e.setProperty(n,i):e[n]=i}}var Mp=me({menuitem:!0},{area:!0,base:!0,br:!0,col:!0,embed:!0,hr:!0,img:!0,input:!0,keygen:!0,link:!0,meta:!0,param:!0,source:!0,track:!0,wbr:!0});function Kl(e,t){if(t){if(Mp[e]&&(t.children!=null||t.dangerouslySetInnerHTML!=null))throw Error(E(137,e));if(t.dangerouslySetInnerHTML!=null){if(t.children!=null)throw Error(E(60));if(typeof t.dangerouslySetInnerHTML!="object"||!("__html"in t.dangerouslySetInnerHTML))throw Error(E(61))}if(t.style!=null&&typeof t.style!="object")throw Error(E(62))}}function Gl(e,t){if(e.indexOf("-")===-1)return typeof t.is=="string";switch(e){case"annotation-xml":case"color-profile":case"font-face":case"font-face-src":case"font-face-uri":case"font-face-format":case"font-face-name":case"missing-glyph":return!1;default:return!0}}var Yl=null;function Ga(e){return e=e.target||e.srcElement||window,e.correspondingUseElement&&(e=e.correspondingUseElement),e.nodeType===3?e.parentNode:e}var Xl=null,Wn=null,Qn=null;function tu(e){if(e=oi(e)){if(typeof Xl!="function")throw Error(E(280));var t=e.stateNode;t&&(t=Po(t),Xl(e.stateNode,e.type,t))}}function Bc(e){Wn?Qn?Qn.push(e):Qn=[e]:Wn=e}function Hc(){if(Wn){var e=Wn,t=Qn;if(Qn=Wn=null,tu(e),t)for(e=0;e<t.length;e++)tu(t[e])}}function Vc(e,t){return e(t)}function Wc(){}var ll=!1;function Qc(e,t,n){if(ll)return e(t,n);ll=!0;try{return Vc(e,t,n)}finally{ll=!1,(Wn!==null||Qn!==null)&&(Wc(),Hc())}}function Ur(e,t){var n=e.stateNode;if(n===null)return null;var r=Po(n);if(r===null)return null;n=r[t];e:switch(t){case"onClick":case"onClickCapture":case"onDoubleClick":case"onDoubleClickCapture":case"onMouseDown":case"onMouseDownCapture":case"onMouseMove":case"onMouseMoveCapture":case"onMouseUp":case"onMouseUpCapture":case"onMouseEnter":(r=!r.disabled)||(e=e.type,r=!(e==="button"||e==="input"||e==="select"||e==="textarea")),e=!r;break e;default:e=!1}if(e)return null;if(n&&typeof n!="function")throw Error(E(231,t,typeof n));return n}var Jl=!1;if(It)try{var fr={};Object.defineProperty(fr,"passive",{get:function(){Jl=!0}}),window.addEventListener("test",fr,fr),window.removeEventListener("test",fr,fr)}catch{Jl=!1}function bp(e,t,n,r,i,o,l,a,s){var u=Array.prototype.slice.call(arguments,3);try{t.apply(n,u)}catch(f){this.onError(f)}}var Cr=!1,Ki=null,Gi=!1,Zl=null,Up={onError:function(e){Cr=!0,Ki=e}};function jp(e,t,n,r,i,o,l,a,s){Cr=!1,Ki=null,bp.apply(Up,arguments)}function Dp(e,t,n,r,i,o,l,a,s){if(jp.apply(this,arguments),Cr){if(Cr){var u=Ki;Cr=!1,Ki=null}else throw Error(E(198));Gi||(Gi=!0,Zl=u)}}function En(e){var t=e,n=e;if(e.alternate)for(;t.return;)t=t.return;else{e=t;do t=e,t.flags&4098&&(n=t.return),e=t.return;while(e)}return t.tag===3?n:null}function Kc(e){if(e.tag===13){var t=e.memoizedState;if(t===null&&(e=e.alternate,e!==null&&(t=e.memoizedState)),t!==null)return t.dehydrated}return null}function nu(e){if(En(e)!==e)throw Error(E(188))}function Fp(e){var t=e.alternate;if(!t){if(t=En(e),t===null)throw Error(E(188));return t!==e?null:e}for(var n=e,r=t;;){var i=n.return;if(i===null)break;var o=i.alternate;if(o===null){if(r=i.return,r!==null){n=r;continue}break}if(i.child===o.child){for(o=i.child;o;){if(o===n)return nu(i),e;if(o===r)return nu(i),t;o=o.sibling}throw Error(E(188))}if(n.return!==r.return)n=i,r=o;else{for(var l=!1,a=i.child;a;){if(a===n){l=!0,n=i,r=o;break}if(a===r){l=!0,r=i,n=o;break}a=a.sibling}if(!l){for(a=o.child;a;){if(a===n){l=!0,n=o,r=i;break}if(a===r){l=!0,r=o,n=i;break}a=a.sibling}if(!l)throw Error(E(189))}}if(n.alternate!==r)throw Error(E(190))}if(n.tag!==3)throw Error(E(188));return n.stateNode.current===n?e:t}function Gc(e){return e=Fp(e),e!==null?Yc(e):null}function Yc(e){if(e.tag===5||e.tag===6)return e;for(e=e.child;e!==null;){var t=Yc(e);if(t!==null)return t;e=e.sibling}return null}var Xc=et.unstable_scheduleCallback,ru=et.unstable_cancelCallback,$p=et.unstable_shouldYield,Bp=et.unstable_requestPaint,we=et.unstable_now,Hp=et.unstable_getCurrentPriorityLevel,Ya=et.unstable_ImmediatePriority,Jc=et.unstable_UserBlockingPriority,Yi=et.unstable_NormalPriority,Vp=et.unstable_LowPriority,Zc=et.unstable_IdlePriority,Co=null,St=null;function Wp(e){if(St&&typeof St.onCommitFiberRoot=="function")try{St.onCommitFiberRoot(Co,e,void 0,(e.current.flags&128)===128)}catch{}}var gt=Math.clz32?Math.clz32:Gp,Qp=Math.log,Kp=Math.LN2;function Gp(e){return e>>>=0,e===0?32:31-(Qp(e)/Kp|0)|0}var mi=64,gi=4194304;function Ar(e){switch(e&-e){case 1:return 1;case 2:return 2;case 4:return 4;case 8:return 8;case 16:return 16;case 32:return 32;case 64:case 128:case 256:case 512:case 1024:case 2048:case 4096:case 8192:case 16384:case 32768:case 65536:case 131072:case 262144:case 524288:case 1048576:case 2097152:return e&4194240;case 4194304:case 8388608:case 16777216:case 33554432:case 67108864:return e&130023424;case 134217728:return 134217728;case 268435456:return 268435456;case 536870912:return 536870912;case 1073741824:return 1073741824;default:return e}}function Xi(e,t){var n=e.pendingLanes;if(n===0)return 0;var r=0,i=e.suspendedLanes,o=e.pingedLanes,l=n&268435455;if(l!==0){var a=l&~i;a!==0?r=Ar(a):(o&=l,o!==0&&(r=Ar(o)))}else l=n&~i,l!==0?r=Ar(l):o!==0&&(r=Ar(o));if(r===0)return 0;if(t!==0&&t!==r&&!(t&i)&&(i=r&-r,o=t&-t,i>=o||i===16&&(o&4194240)!==0))return t;if(r&4&&(r|=n&16),t=e.entangledLanes,t!==0)for(e=e.entanglements,t&=r;0<t;)n=31-gt(t),i=1<<n,r|=e[n],t&=~i;return r}function Yp(e,t){switch(e){case 1:case 2:case 4:return t+250;case 8:case 16:case 32:case 64:case 128:case 256:case 512:case 1024:case 2048:case 4096:case 8192:case 16384:case 32768:case 65536:case 131072:case 262144:case 524288:case 1048576:case 2097152:return t+5e3;case 4194304:case 8388608:case 16777216:case 33554432:case 67108864:return-1;case 134217728:case 268435456:case 536870912:case 1073741824:return-1;default:return-1}}function Xp(e,t){for(var n=e.suspendedLanes,r=e.pingedLanes,i=e.expirationTimes,o=e.pendingLanes;0<o;){var l=31-gt(o),a=1<<l,s=i[l];s===-1?(!(a&n)||a&r)&&(i[l]=Yp(a,t)):s<=t&&(e.expiredLanes|=a),o&=~a}}function ql(e){return e=e.pendingLanes&-1073741825,e!==0?e:e&1073741824?1073741824:0}function qc(){var e=mi;return mi<<=1,!(mi&4194240)&&(mi=64),e}function al(e){for(var t=[],n=0;31>n;n++)t.push(e);return t}function ri(e,t,n){e.pendingLanes|=t,t!==536870912&&(e.suspendedLanes=0,e.pingedLanes=0),e=e.eventTimes,t=31-gt(t),e[t]=n}function Jp(e,t){var n=e.pendingLanes&~t;e.pendingLanes=t,e.suspendedLanes=0,e.pingedLanes=0,e.expiredLanes&=t,e.mutableReadLanes&=t,e.entangledLanes&=t,t=e.entanglements;var r=e.eventTimes;for(e=e.expirationTimes;0<n;){var i=31-gt(n),o=1<<i;t[i]=0,r[i]=-1,e[i]=-1,n&=~o}}function Xa(e,t){var n=e.entangledLanes|=t;for(e=e.entanglements;n;){var r=31-gt(n),i=1<<r;i&t|e[r]&t&&(e[r]|=t),n&=~i}}var q=0;function ef(e){return e&=-e,1<e?4<e?e&268435455?16:536870912:4:1}var tf,Ja,nf,rf,of,ea=!1,vi=[],Wt=null,Qt=null,Kt=null,jr=new Map,Dr=new Map,Dt=[],Zp="mousedown mouseup touchcancel touchend touchstart auxclick dblclick pointercancel pointerdown pointerup dragend dragstart drop compositionend compositionstart keydown keypress keyup input textInput copy cut paste click change contextmenu reset submit".split(" ");function iu(e,t){switch(e){case"focusin":case"focusout":Wt=null;break;case"dragenter":case"dragleave":Qt=null;break;case"mouseover":case"mouseout":Kt=null;break;case"pointerover":case"pointerout":jr.delete(t.pointerId);break;case"gotpointercapture":case"lostpointercapture":Dr.delete(t.pointerId)}}function dr(e,t,n,r,i,o){return e===null||e.nativeEvent!==o?(e={blockedOn:t,domEventName:n,eventSystemFlags:r,nativeEvent:o,targetContainers:[i]},t!==null&&(t=oi(t),t!==null&&Ja(t)),e):(e.eventSystemFlags|=r,t=e.targetContainers,i!==null&&t.indexOf(i)===-1&&t.push(i),e)}function qp(e,t,n,r,i){switch(t){case"focusin":return Wt=dr(Wt,e,t,n,r,i),!0;case"dragenter":return Qt=dr(Qt,e,t,n,r,i),!0;case"mouseover":return Kt=dr(Kt,e,t,n,r,i),!0;case"pointerover":var o=i.pointerId;return jr.set(o,dr(jr.get(o)||null,e,t,n,r,i)),!0;case"gotpointercapture":return o=i.pointerId,Dr.set(o,dr(Dr.get(o)||null,e,t,n,r,i)),!0}return!1}function lf(e){var t=dn(e.target);if(t!==null){var n=En(t);if(n!==null){if(t=n.tag,t===13){if(t=Kc(n),t!==null){e.blockedOn=t,of(e.priority,function(){nf(n)});return}}else if(t===3&&n.stateNode.current.memoizedState.isDehydrated){e.blockedOn=n.tag===3?n.stateNode.containerInfo:null;return}}}e.blockedOn=null}function _i(e){if(e.blockedOn!==null)return!1;for(var t=e.targetContainers;0<t.length;){var n=ta(e.domEventName,e.eventSystemFlags,t[0],e.nativeEvent);if(n===null){n=e.nativeEvent;var r=new n.constructor(n.type,n);Yl=r,n.target.dispatchEvent(r),Yl=null}else return t=oi(n),t!==null&&Ja(t),e.blockedOn=n,!1;t.shift()}return!0}function ou(e,t,n){_i(e)&&n.delete(t)}function eh(){ea=!1,Wt!==null&&_i(Wt)&&(Wt=null),Qt!==null&&_i(Qt)&&(Qt=null),Kt!==null&&_i(Kt)&&(Kt=null),jr.forEach(ou),Dr.forEach(ou)}function pr(e,t){e.blockedOn===t&&(e.blockedOn=null,ea||(ea=!0,et.unstable_scheduleCallback(et.unstable_NormalPriority,eh)))}function Fr(e){function t(i){return pr(i,e)}if(0<vi.length){pr(vi[0],e);for(var n=1;n<vi.length;n++){var r=vi[n];r.blockedOn===e&&(r.blockedOn=null)}}for(Wt!==null&&pr(Wt,e),Qt!==null&&pr(Qt,e),Kt!==null&&pr(Kt,e),jr.forEach(t),Dr.forEach(t),n=0;n<Dt.length;n++)r=Dt[n],r.blockedOn===e&&(r.blockedOn=null);for(;0<Dt.length&&(n=Dt[0],n.blockedOn===null);)lf(n),n.blockedOn===null&&Dt.shift()}var Kn=_t.ReactCurrentBatchConfig,Ji=!0;function th(e,t,n,r){var i=q,o=Kn.transition;Kn.transition=null;try{q=1,Za(e,t,n,r)}finally{q=i,Kn.transition=o}}function nh(e,t,n,r){var i=q,o=Kn.transition;Kn.transition=null;try{q=4,Za(e,t,n,r)}finally{q=i,Kn.transition=o}}function Za(e,t,n,r){if(Ji){var i=ta(e,t,n,r);if(i===null)vl(e,t,r,Zi,n),iu(e,r);else if(qp(i,e,t,n,r))r.stopPropagation();else if(iu(e,r),t&4&&-1<Zp.indexOf(e)){for(;i!==null;){var o=oi(i);if(o!==null&&tf(o),o=ta(e,t,n,r),o===null&&vl(e,t,r,Zi,n),o===i)break;i=o}i!==null&&r.stopPropagation()}else vl(e,t,r,null,n)}}var Zi=null;function ta(e,t,n,r){if(Zi=null,e=Ga(r),e=dn(e),e!==null)if(t=En(e),t===null)e=null;else if(n=t.tag,n===13){if(e=Kc(t),e!==null)return e;e=null}else if(n===3){if(t.stateNode.current.memoizedState.isDehydrated)return t.tag===3?t.stateNode.containerInfo:null;e=null}else t!==e&&(e=null);return Zi=e,null}function af(e){switch(e){case"cancel":case"click":case"close":case"contextmenu":case"copy":case"cut":case"auxclick":case"dblclick":case"dragend":case"dragstart":case"drop":case"focusin":case"focusout":case"input":case"invalid":case"keydown":case"keypress":case"keyup":case"mousedown":case"mouseup":case"paste":case"pause":case"play":case"pointercancel":case"pointerdown":case"pointerup":case"ratechange":case"reset":case"resize":case"seeked":case"submit":case"touchcancel":case"touchend":case"touchstart":case"volumechange":case"change":case"selectionchange":case"textInput":case"compositionstart":case"compositionend":case"compositionupdate":case"beforeblur":case"afterblur":case"beforeinput":case"blur":case"fullscreenchange":case"focus":case"hashchange":case"popstate":case"select":case"selectstart":return 1;case"drag":case"dragenter":case"dragexit":case"dragleave":case"dragover":case"mousemove":case"mouseout":case"mouseover":case"pointermove":case"pointerout":case"pointerover":case"scroll":case"toggle":case"touchmove":case"wheel":case"mouseenter":case"mouseleave":case"pointerenter":case"pointerleave":return 4;case"message":switch(Hp()){case Ya:return 1;case Jc:return 4;case Yi:case Vp:return 16;case Zc:return 536870912;default:return 16}default:return 16}}var $t=null,qa=null,Mi=null;function sf(){if(Mi)return Mi;var e,t=qa,n=t.length,r,i="value"in $t?$t.value:$t.textContent,o=i.length;for(e=0;e<n&&t[e]===i[e];e++);var l=n-e;for(r=1;r<=l&&t[n-r]===i[o-r];r++);return Mi=i.slice(e,1<r?1-r:void 0)}function bi(e){var t=e.keyCode;return"charCode"in e?(e=e.charCode,e===0&&t===13&&(e=13)):e=t,e===10&&(e=13),32<=e||e===13?e:0}function yi(){return!0}function lu(){return!1}function nt(e){function t(n,r,i,o,l){this._reactName=n,this._targetInst=i,this.type=r,this.nativeEvent=o,this.target=l,this.currentTarget=null;for(var a in e)e.hasOwnProperty(a)&&(n=e[a],this[a]=n?n(o):o[a]);return this.isDefaultPrevented=(o.defaultPrevented!=null?o.defaultPrevented:o.returnValue===!1)?yi:lu,this.isPropagationStopped=lu,this}return me(t.prototype,{preventDefault:function(){this.defaultPrevented=!0;var n=this.nativeEvent;n&&(n.preventDefault?n.preventDefault():typeof n.returnValue!="unknown"&&(n.returnValue=!1),this.isDefaultPrevented=yi)},stopPropagation:function(){var n=this.nativeEvent;n&&(n.stopPropagation?n.stopPropagation():typeof n.cancelBubble!="unknown"&&(n.cancelBubble=!0),this.isPropagationStopped=yi)},persist:function(){},isPersistent:yi}),t}var or={eventPhase:0,bubbles:0,cancelable:0,timeStamp:function(e){return e.timeStamp||Date.now()},defaultPrevented:0,isTrusted:0},es=nt(or),ii=me({},or,{view:0,detail:0}),rh=nt(ii),sl,ul,hr,Eo=me({},ii,{screenX:0,screenY:0,clientX:0,clientY:0,pageX:0,pageY:0,ctrlKey:0,shiftKey:0,altKey:0,metaKey:0,getModifierState:ts,button:0,buttons:0,relatedTarget:function(e){return e.relatedTarget===void 0?e.fromElement===e.srcElement?e.toElement:e.fromElement:e.relatedTarget},movementX:function(e){return"movementX"in e?e.movementX:(e!==hr&&(hr&&e.type==="mousemove"?(sl=e.screenX-hr.screenX,ul=e.screenY-hr.screenY):ul=sl=0,hr=e),sl)},movementY:function(e){return"movementY"in e?e.movementY:ul}}),au=nt(Eo),ih=me({},Eo,{dataTransfer:0}),oh=nt(ih),lh=me({},ii,{relatedTarget:0}),cl=nt(lh),ah=me({},or,{animationName:0,elapsedTime:0,pseudoElement:0}),sh=nt(ah),uh=me({},or,{clipboardData:function(e){return"clipboardData"in e?e.clipboardData:window.clipboardData}}),ch=nt(uh),fh=me({},or,{data:0}),su=nt(fh),dh={Esc:"Escape",Spacebar:" ",Left:"ArrowLeft",Up:"ArrowUp",Right:"ArrowRight",Down:"ArrowDown",Del:"Delete",Win:"OS",Menu:"ContextMenu",Apps:"ContextMenu",Scroll:"ScrollLock",MozPrintableKey:"Unidentified"},ph={8:"Backspace",9:"Tab",12:"Clear",13:"Enter",16:"Shift",17:"Control",18:"Alt",19:"Pause",20:"CapsLock",27:"Escape",32:" ",33:"PageUp",34:"PageDown",35:"End",36:"Home",37:"ArrowLeft",38:"ArrowUp",39:"ArrowRight",40:"ArrowDown",45:"Insert",46:"Delete",112:"F1",113:"F2",114:"F3",115:"F4",116:"F5",117:"F6",118:"F7",119:"F8",120:"F9",121:"F10",122:"F11",123:"F12",144:"NumLock",145:"ScrollLock",224:"Meta"},hh={Alt:"altKey",Control:"ctrlKey",Meta:"metaKey",Shift:"shiftKey"};function mh(e){var t=this.nativeEvent;return t.getModifierState?t.getModifierState(e):(e=hh[e])?!!t[e]:!1}function ts(){return mh}var gh=me({},ii,{key:function(e){if(e.key){var t=dh[e.key]||e.key;if(t!=="Unidentified")return t}return e.type==="keypress"?(e=bi(e),e===13?"Enter":String.fromCharCode(e)):e.type==="keydown"||e.type==="keyup"?ph[e.keyCode]||"Unidentified":""},code:0,location:0,ctrlKey:0,shiftKey:0,altKey:0,metaKey:0,repeat:0,locale:0,getModifierState:ts,charCode:function(e){return e.type==="keypress"?bi(e):0},keyCode:function(e){return e.type==="keydown"||e.type==="keyup"?e.keyCode:0},which:function(e){return e.type==="keypress"?bi(e):e.type==="keydown"||e.type==="keyup"?e.keyCode:0}}),vh=nt(gh),yh=me({},Eo,{pointerId:0,width:0,height:0,pressure:0,tangentialPressure:0,tiltX:0,tiltY:0,twist:0,pointerType:0,isPrimary:0}),uu=nt(yh),wh=me({},ii,{touches:0,targetTouches:0,changedTouches:0,altKey:0,metaKey:0,ctrlKey:0,shiftKey:0,getModifierState:ts}),Ah=nt(wh),kh=me({},or,{propertyName:0,elapsedTime:0,pseudoElement:0}),xh=nt(kh),Sh=me({},Eo,{deltaX:function(e){return"deltaX"in e?e.deltaX:"wheelDeltaX"in e?-e.wheelDeltaX:0},deltaY:function(e){return"deltaY"in e?e.deltaY:"wheelDeltaY"in e?-e.wheelDeltaY:"wheelDelta"in e?-e.wheelDelta:0},deltaZ:0,deltaMode:0}),Ch=nt(Sh),Eh=[9,13,27,32],ns=It&&"CompositionEvent"in window,Er=null;It&&"documentMode"in document&&(Er=document.documentMode);var Nh=It&&"TextEvent"in window&&!Er,uf=It&&(!ns||Er&&8<Er&&11>=Er),cu=String.fromCharCode(32),fu=!1;function cf(e,t){switch(e){case"keyup":return Eh.indexOf(t.keyCode)!==-1;case"keydown":return t.keyCode!==229;case"keypress":case"mousedown":case"focusout":return!0;default:return!1}}function ff(e){return e=e.detail,typeof e=="object"&&"data"in e?e.data:null}var On=!1;function Rh(e,t){switch(e){case"compositionend":return ff(t);case"keypress":return t.which!==32?null:(fu=!0,cu);case"textInput":return e=t.data,e===cu&&fu?null:e;default:return null}}function Ph(e,t){if(On)return e==="compositionend"||!ns&&cf(e,t)?(e=sf(),Mi=qa=$t=null,On=!1,e):null;switch(e){case"paste":return null;case"keypress":if(!(t.ctrlKey||t.altKey||t.metaKey)||t.ctrlKey&&t.altKey){if(t.char&&1<t.char.length)return t.char;if(t.which)return String.fromCharCode(t.which)}return null;case"compositionend":return uf&&t.locale!=="ko"?null:t.data;default:return null}}var Th={color:!0,date:!0,datetime:!0,"datetime-local":!0,email:!0,month:!0,number:!0,password:!0,range:!0,search:!0,tel:!0,text:!0,time:!0,url:!0,week:!0};function du(e){var t=e&&e.nodeName&&e.nodeName.toLowerCase();return t==="input"?!!Th[e.type]:t==="textarea"}function df(e,t,n,r){Bc(r),t=qi(t,"onChange"),0<t.length&&(n=new es("onChange","change",null,n,r),e.push({event:n,listeners:t}))}var Nr=null,$r=null;function Ih(e){Sf(e,0)}function No(e){var t=bn(e);if(Mc(t))return e}function zh(e,t){if(e==="change")return t}var pf=!1;if(It){var fl;if(It){var dl="oninput"in document;if(!dl){var pu=document.createElement("div");pu.setAttribute("oninput","return;"),dl=typeof pu.oninput=="function"}fl=dl}else fl=!1;pf=fl&&(!document.documentMode||9<document.documentMode)}function hu(){Nr&&(Nr.detachEvent("onpropertychange",hf),$r=Nr=null)}function hf(e){if(e.propertyName==="value"&&No($r)){var t=[];df(t,$r,e,Ga(e)),Qc(Ih,t)}}function Lh(e,t,n){e==="focusin"?(hu(),Nr=t,$r=n,Nr.attachEvent("onpropertychange",hf)):e==="focusout"&&hu()}function Oh(e){if(e==="selectionchange"||e==="keyup"||e==="keydown")return No($r)}function _h(e,t){if(e==="click")return No(t)}function Mh(e,t){if(e==="input"||e==="change")return No(t)}function bh(e,t){return e===t&&(e!==0||1/e===1/t)||e!==e&&t!==t}var yt=typeof Object.is=="function"?Object.is:bh;function Br(e,t){if(yt(e,t))return!0;if(typeof e!="object"||e===null||typeof t!="object"||t===null)return!1;var n=Object.keys(e),r=Object.keys(t);if(n.length!==r.length)return!1;for(r=0;r<n.length;r++){var i=n[r];if(!Ul.call(t,i)||!yt(e[i],t[i]))return!1}return!0}function mu(e){for(;e&&e.firstChild;)e=e.firstChild;return e}function gu(e,t){var n=mu(e);e=0;for(var r;n;){if(n.nodeType===3){if(r=e+n.textContent.length,e<=t&&r>=t)return{node:n,offset:t-e};e=r}e:{for(;n;){if(n.nextSibling){n=n.nextSibling;break e}n=n.parentNode}n=void 0}n=mu(n)}}function mf(e,t){return e&&t?e===t?!0:e&&e.nodeType===3?!1:t&&t.nodeType===3?mf(e,t.parentNode):"contains"in e?e.contains(t):e.compareDocumentPosition?!!(e.compareDocumentPosition(t)&16):!1:!1}function gf(){for(var e=window,t=Qi();t instanceof e.HTMLIFrameElement;){try{var n=typeof t.contentWindow.location.href=="string"}catch{n=!1}if(n)e=t.contentWindow;else break;t=Qi(e.document)}return t}function rs(e){var t=e&&e.nodeName&&e.nodeName.toLowerCase();return t&&(t==="input"&&(e.type==="text"||e.type==="search"||e.type==="tel"||e.type==="url"||e.type==="password")||t==="textarea"||e.contentEditable==="true")}function Uh(e){var t=gf(),n=e.focusedElem,r=e.selectionRange;if(t!==n&&n&&n.ownerDocument&&mf(n.ownerDocument.documentElement,n)){if(r!==null&&rs(n)){if(t=r.start,e=r.end,e===void 0&&(e=t),"selectionStart"in n)n.selectionStart=t,n.selectionEnd=Math.min(e,n.value.length);else if(e=(t=n.ownerDocument||document)&&t.defaultView||window,e.getSelection){e=e.getSelection();var i=n.textContent.length,o=Math.min(r.start,i);r=r.end===void 0?o:Math.min(r.end,i),!e.extend&&o>r&&(i=r,r=o,o=i),i=gu(n,o);var l=gu(n,r);i&&l&&(e.rangeCount!==1||e.anchorNode!==i.node||e.anchorOffset!==i.offset||e.focusNode!==l.node||e.focusOffset!==l.offset)&&(t=t.createRange(),t.setStart(i.node,i.offset),e.removeAllRanges(),o>r?(e.addRange(t),e.extend(l.node,l.offset)):(t.setEnd(l.node,l.offset),e.addRange(t)))}}for(t=[],e=n;e=e.parentNode;)e.nodeType===1&&t.push({element:e,left:e.scrollLeft,top:e.scrollTop});for(typeof n.focus=="function"&&n.focus(),n=0;n<t.length;n++)e=t[n],e.element.scrollLeft=e.left,e.element.scrollTop=e.top}}var jh=It&&"documentMode"in document&&11>=document.documentMode,_n=null,na=null,Rr=null,ra=!1;function vu(e,t,n){var r=n.window===n?n.document:n.nodeType===9?n:n.ownerDocument;ra||_n==null||_n!==Qi(r)||(r=_n,"selectionStart"in r&&rs(r)?r={start:r.selectionStart,end:r.selectionEnd}:(r=(r.ownerDocument&&r.ownerDocument.defaultView||window).getSelection(),r={anchorNode:r.anchorNode,anchorOffset:r.anchorOffset,focusNode:r.focusNode,focusOffset:r.focusOffset}),Rr&&Br(Rr,r)||(Rr=r,r=qi(na,"onSelect"),0<r.length&&(t=new es("onSelect","select",null,t,n),e.push({event:t,listeners:r}),t.target=_n)))}function wi(e,t){var n={};return n[e.toLowerCase()]=t.toLowerCase(),n["Webkit"+e]="webkit"+t,n["Moz"+e]="moz"+t,n}var Mn={animationend:wi("Animation","AnimationEnd"),animationiteration:wi("Animation","AnimationIteration"),animationstart:wi("Animation","AnimationStart"),transitionend:wi("Transition","TransitionEnd")},pl={},vf={};It&&(vf=document.createElement("div").style,"AnimationEvent"in window||(delete Mn.animationend.animation,delete Mn.animationiteration.animation,delete Mn.animationstart.animation),"TransitionEvent"in window||delete Mn.transitionend.transition);function Ro(e){if(pl[e])return pl[e];if(!Mn[e])return e;var t=Mn[e],n;for(n in t)if(t.hasOwnProperty(n)&&n in vf)return pl[e]=t[n];return e}var yf=Ro("animationend"),wf=Ro("animationiteration"),Af=Ro("animationstart"),kf=Ro("transitionend"),xf=new Map,yu="abort auxClick cancel canPlay canPlayThrough click close contextMenu copy cut drag dragEnd dragEnter dragExit dragLeave dragOver dragStart drop durationChange emptied encrypted ended error gotPointerCapture input invalid keyDown keyPress keyUp load loadedData loadedMetadata loadStart lostPointerCapture mouseDown mouseMove mouseOut mouseOver mouseUp paste pause play playing pointerCancel pointerDown pointerMove pointerOut pointerOver pointerUp progress rateChange reset resize seeked seeking stalled submit suspend timeUpdate touchCancel touchEnd touchStart volumeChange scroll toggle touchMove waiting wheel".split(" ");function on(e,t){xf.set(e,t),Cn(t,[e])}for(var hl=0;hl<yu.length;hl++){var ml=yu[hl],Dh=ml.toLowerCase(),Fh=ml[0].toUpperCase()+ml.slice(1);on(Dh,"on"+Fh)}on(yf,"onAnimationEnd");on(wf,"onAnimationIteration");on(Af,"onAnimationStart");on("dblclick","onDoubleClick");on("focusin","onFocus");on("focusout","onBlur");on(kf,"onTransitionEnd");Xn("onMouseEnter",["mouseout","mouseover"]);Xn("onMouseLeave",["mouseout","mouseover"]);Xn("onPointerEnter",["pointerout","pointerover"]);Xn("onPointerLeave",["pointerout","pointerover"]);Cn("onChange","change click focusin focusout input keydown keyup selectionchange".split(" "));Cn("onSelect","focusout contextmenu dragend focusin keydown keyup mousedown mouseup selectionchange".split(" "));Cn("onBeforeInput",["compositionend","keypress","textInput","paste"]);Cn("onCompositionEnd","compositionend focusout keydown keypress keyup mousedown".split(" "));Cn("onCompositionStart","compositionstart focusout keydown keypress keyup mousedown".split(" "));Cn("onCompositionUpdate","compositionupdate focusout keydown keypress keyup mousedown".split(" "));var kr="abort canplay canplaythrough durationchange emptied encrypted ended error loadeddata loadedmetadata loadstart pause play playing progress ratechange resize seeked seeking stalled suspend timeupdate volumechange waiting".split(" "),$h=new Set("cancel close invalid load scroll toggle".split(" ").concat(kr));function wu(e,t,n){var r=e.type||"unknown-event";e.currentTarget=n,Dp(r,t,void 0,e),e.currentTarget=null}function Sf(e,t){t=(t&4)!==0;for(var n=0;n<e.length;n++){var r=e[n],i=r.event;r=r.listeners;e:{var o=void 0;if(t)for(var l=r.length-1;0<=l;l--){var a=r[l],s=a.instance,u=a.currentTarget;if(a=a.listener,s!==o&&i.isPropagationStopped())break e;wu(i,a,u),o=s}else for(l=0;l<r.length;l++){if(a=r[l],s=a.instance,u=a.currentTarget,a=a.listener,s!==o&&i.isPropagationStopped())break e;wu(i,a,u),o=s}}}if(Gi)throw e=Zl,Gi=!1,Zl=null,e}function se(e,t){var n=t[sa];n===void 0&&(n=t[sa]=new Set);var r=e+"__bubble";n.has(r)||(Cf(t,e,2,!1),n.add(r))}function gl(e,t,n){var r=0;t&&(r|=4),Cf(n,e,r,t)}var Ai="_reactListening"+Math.random().toString(36).slice(2);function Hr(e){if(!e[Ai]){e[Ai]=!0,Ic.forEach(function(n){n!=="selectionchange"&&($h.has(n)||gl(n,!1,e),gl(n,!0,e))});var t=e.nodeType===9?e:e.ownerDocument;t===null||t[Ai]||(t[Ai]=!0,gl("selectionchange",!1,t))}}function Cf(e,t,n,r){switch(af(t)){case 1:var i=th;break;case 4:i=nh;break;default:i=Za}n=i.bind(null,t,n,e),i=void 0,!Jl||t!=="touchstart"&&t!=="touchmove"&&t!=="wheel"||(i=!0),r?i!==void 0?e.addEventListener(t,n,{capture:!0,passive:i}):e.addEventListener(t,n,!0):i!==void 0?e.addEventListener(t,n,{passive:i}):e.addEventListener(t,n,!1)}function vl(e,t,n,r,i){var o=r;if(!(t&1)&&!(t&2)&&r!==null)e:for(;;){if(r===null)return;var l=r.tag;if(l===3||l===4){var a=r.stateNode.containerInfo;if(a===i||a.nodeType===8&&a.parentNode===i)break;if(l===4)for(l=r.return;l!==null;){var s=l.tag;if((s===3||s===4)&&(s=l.stateNode.containerInfo,s===i||s.nodeType===8&&s.parentNode===i))return;l=l.return}for(;a!==null;){if(l=dn(a),l===null)return;if(s=l.tag,s===5||s===6){r=o=l;continue e}a=a.parentNode}}r=r.return}Qc(function(){var u=o,f=Ga(n),p=[];e:{var h=xf.get(e);if(h!==void 0){var g=es,v=e;switch(e){case"keypress":if(bi(n)===0)break e;case"keydown":case"keyup":g=vh;break;case"focusin":v="focus",g=cl;break;case"focusout":v="blur",g=cl;break;case"beforeblur":case"afterblur":g=cl;break;case"click":if(n.button===2)break e;case"auxclick":case"dblclick":case"mousedown":case"mousemove":case"mouseup":case"mouseout":case"mouseover":case"contextmenu":g=au;break;case"drag":case"dragend":case"dragenter":case"dragexit":case"dragleave":case"dragover":case"dragstart":case"drop":g=oh;break;case"touchcancel":case"touchend":case"touchmove":case"touchstart":g=Ah;break;case yf:case wf:case Af:g=sh;break;case kf:g=xh;break;case"scroll":g=rh;break;case"wheel":g=Ch;break;case"copy":case"cut":case"paste":g=ch;break;case"gotpointercapture":case"lostpointercapture":case"pointercancel":case"pointerdown":case"pointermove":case"pointerout":case"pointerover":case"pointerup":g=uu}var y=(t&4)!==0,x=!y&&e==="scroll",d=y?h!==null?h+"Capture":null:h;y=[];for(var c=u,m;c!==null;){m=c;var w=m.stateNode;if(m.tag===5&&w!==null&&(m=w,d!==null&&(w=Ur(c,d),w!=null&&y.push(Vr(c,w,m)))),x)break;c=c.return}0<y.length&&(h=new g(h,v,null,n,f),p.push({event:h,listeners:y}))}}if(!(t&7)){e:{if(h=e==="mouseover"||e==="pointerover",g=e==="mouseout"||e==="pointerout",h&&n!==Yl&&(v=n.relatedTarget||n.fromElement)&&(dn(v)||v[zt]))break e;if((g||h)&&(h=f.window===f?f:(h=f.ownerDocument)?h.defaultView||h.parentWindow:window,g?(v=n.relatedTarget||n.toElement,g=u,v=v?dn(v):null,v!==null&&(x=En(v),v!==x||v.tag!==5&&v.tag!==6)&&(v=null)):(g=null,v=u),g!==v)){if(y=au,w="onMouseLeave",d="onMouseEnter",c="mouse",(e==="pointerout"||e==="pointerover")&&(y=uu,w="onPointerLeave",d="onPointerEnter",c="pointer"),x=g==null?h:bn(g),m=v==null?h:bn(v),h=new y(w,c+"leave",g,n,f),h.target=x,h.relatedTarget=m,w=null,dn(f)===u&&(y=new y(d,c+"enter",v,n,f),y.target=m,y.relatedTarget=x,w=y),x=w,g&&v)t:{for(y=g,d=v,c=0,m=y;m;m=Tn(m))c++;for(m=0,w=d;w;w=Tn(w))m++;for(;0<c-m;)y=Tn(y),c--;for(;0<m-c;)d=Tn(d),m--;for(;c--;){if(y===d||d!==null&&y===d.alternate)break t;y=Tn(y),d=Tn(d)}y=null}else y=null;g!==null&&Au(p,h,g,y,!1),v!==null&&x!==null&&Au(p,x,v,y,!0)}}e:{if(h=u?bn(u):window,g=h.nodeName&&h.nodeName.toLowerCase(),g==="select"||g==="input"&&h.type==="file")var C=zh;else if(du(h))if(pf)C=Mh;else{C=Oh;var T=Lh}else(g=h.nodeName)&&g.toLowerCase()==="input"&&(h.type==="checkbox"||h.type==="radio")&&(C=_h);if(C&&(C=C(e,u))){df(p,C,n,f);break e}T&&T(e,h,u),e==="focusout"&&(T=h._wrapperState)&&T.controlled&&h.type==="number"&&Vl(h,"number",h.value)}switch(T=u?bn(u):window,e){case"focusin":(du(T)||T.contentEditable==="true")&&(_n=T,na=u,Rr=null);break;case"focusout":Rr=na=_n=null;break;case"mousedown":ra=!0;break;case"contextmenu":case"mouseup":case"dragend":ra=!1,vu(p,n,f);break;case"selectionchange":if(jh)break;case"keydown":case"keyup":vu(p,n,f)}var L;if(ns)e:{switch(e){case"compositionstart":var R="onCompositionStart";break e;case"compositionend":R="onCompositionEnd";break e;case"compositionupdate":R="onCompositionUpdate";break e}R=void 0}else On?cf(e,n)&&(R="onCompositionEnd"):e==="keydown"&&n.keyCode===229&&(R="onCompositionStart");R&&(uf&&n.locale!=="ko"&&(On||R!=="onCompositionStart"?R==="onCompositionEnd"&&On&&(L=sf()):($t=f,qa="value"in $t?$t.value:$t.textContent,On=!0)),T=qi(u,R),0<T.length&&(R=new su(R,e,null,n,f),p.push({event:R,listeners:T}),L?R.data=L:(L=ff(n),L!==null&&(R.data=L)))),(L=Nh?Rh(e,n):Ph(e,n))&&(u=qi(u,"onBeforeInput"),0<u.length&&(f=new su("onBeforeInput","beforeinput",null,n,f),p.push({event:f,listeners:u}),f.data=L))}Sf(p,t)})}function Vr(e,t,n){return{instance:e,listener:t,currentTarget:n}}function qi(e,t){for(var n=t+"Capture",r=[];e!==null;){var i=e,o=i.stateNode;i.tag===5&&o!==null&&(i=o,o=Ur(e,n),o!=null&&r.unshift(Vr(e,o,i)),o=Ur(e,t),o!=null&&r.push(Vr(e,o,i))),e=e.return}return r}function Tn(e){if(e===null)return null;do e=e.return;while(e&&e.tag!==5);return e||null}function Au(e,t,n,r,i){for(var o=t._reactName,l=[];n!==null&&n!==r;){var a=n,s=a.alternate,u=a.stateNode;if(s!==null&&s===r)break;a.tag===5&&u!==null&&(a=u,i?(s=Ur(n,o),s!=null&&l.unshift(Vr(n,s,a))):i||(s=Ur(n,o),s!=null&&l.push(Vr(n,s,a)))),n=n.return}l.length!==0&&e.push({event:t,listeners:l})}var Bh=/\r\n?/g,Hh=/\u0000|\uFFFD/g;function ku(e){return(typeof e=="string"?e:""+e).replace(Bh,`
`).replace(Hh,"")}function ki(e,t,n){if(t=ku(t),ku(e)!==t&&n)throw Error(E(425))}function eo(){}var ia=null,oa=null;function la(e,t){return e==="textarea"||e==="noscript"||typeof t.children=="string"||typeof t.children=="number"||typeof t.dangerouslySetInnerHTML=="object"&&t.dangerouslySetInnerHTML!==null&&t.dangerouslySetInnerHTML.__html!=null}var aa=typeof setTimeout=="function"?setTimeout:void 0,Vh=typeof clearTimeout=="function"?clearTimeout:void 0,xu=typeof Promise=="function"?Promise:void 0,Wh=typeof queueMicrotask=="function"?queueMicrotask:typeof xu<"u"?function(e){return xu.resolve(null).then(e).catch(Qh)}:aa;function Qh(e){setTimeout(function(){throw e})}function yl(e,t){var n=t,r=0;do{var i=n.nextSibling;if(e.removeChild(n),i&&i.nodeType===8)if(n=i.data,n==="/$"){if(r===0){e.removeChild(i),Fr(t);return}r--}else n!=="$"&&n!=="$?"&&n!=="$!"||r++;n=i}while(n);Fr(t)}function Gt(e){for(;e!=null;e=e.nextSibling){var t=e.nodeType;if(t===1||t===3)break;if(t===8){if(t=e.data,t==="$"||t==="$!"||t==="$?")break;if(t==="/$")return null}}return e}function Su(e){e=e.previousSibling;for(var t=0;e;){if(e.nodeType===8){var n=e.data;if(n==="$"||n==="$!"||n==="$?"){if(t===0)return e;t--}else n==="/$"&&t++}e=e.previousSibling}return null}var lr=Math.random().toString(36).slice(2),kt="__reactFiber$"+lr,Wr="__reactProps$"+lr,zt="__reactContainer$"+lr,sa="__reactEvents$"+lr,Kh="__reactListeners$"+lr,Gh="__reactHandles$"+lr;function dn(e){var t=e[kt];if(t)return t;for(var n=e.parentNode;n;){if(t=n[zt]||n[kt]){if(n=t.alternate,t.child!==null||n!==null&&n.child!==null)for(e=Su(e);e!==null;){if(n=e[kt])return n;e=Su(e)}return t}e=n,n=e.parentNode}return null}function oi(e){return e=e[kt]||e[zt],!e||e.tag!==5&&e.tag!==6&&e.tag!==13&&e.tag!==3?null:e}function bn(e){if(e.tag===5||e.tag===6)return e.stateNode;throw Error(E(33))}function Po(e){return e[Wr]||null}var ua=[],Un=-1;function ln(e){return{current:e}}function ue(e){0>Un||(e.current=ua[Un],ua[Un]=null,Un--)}function le(e,t){Un++,ua[Un]=e.current,e.current=t}var rn={},Ue=ln(rn),Qe=ln(!1),vn=rn;function Jn(e,t){var n=e.type.contextTypes;if(!n)return rn;var r=e.stateNode;if(r&&r.__reactInternalMemoizedUnmaskedChildContext===t)return r.__reactInternalMemoizedMaskedChildContext;var i={},o;for(o in n)i[o]=t[o];return r&&(e=e.stateNode,e.__reactInternalMemoizedUnmaskedChildContext=t,e.__reactInternalMemoizedMaskedChildContext=i),i}function Ke(e){return e=e.childContextTypes,e!=null}function to(){ue(Qe),ue(Ue)}function Cu(e,t,n){if(Ue.current!==rn)throw Error(E(168));le(Ue,t),le(Qe,n)}function Ef(e,t,n){var r=e.stateNode;if(t=t.childContextTypes,typeof r.getChildContext!="function")return n;r=r.getChildContext();for(var i in r)if(!(i in t))throw Error(E(108,Lp(e)||"Unknown",i));return me({},n,r)}function no(e){return e=(e=e.stateNode)&&e.__reactInternalMemoizedMergedChildContext||rn,vn=Ue.current,le(Ue,e),le(Qe,Qe.current),!0}function Eu(e,t,n){var r=e.stateNode;if(!r)throw Error(E(169));n?(e=Ef(e,t,vn),r.__reactInternalMemoizedMergedChildContext=e,ue(Qe),ue(Ue),le(Ue,e)):ue(Qe),le(Qe,n)}var Nt=null,To=!1,wl=!1;function Nf(e){Nt===null?Nt=[e]:Nt.push(e)}function Yh(e){To=!0,Nf(e)}function an(){if(!wl&&Nt!==null){wl=!0;var e=0,t=q;try{var n=Nt;for(q=1;e<n.length;e++){var r=n[e];do r=r(!0);while(r!==null)}Nt=null,To=!1}catch(i){throw Nt!==null&&(Nt=Nt.slice(e+1)),Xc(Ya,an),i}finally{q=t,wl=!1}}return null}var jn=[],Dn=0,ro=null,io=0,ot=[],lt=0,yn=null,Rt=1,Pt="";function sn(e,t){jn[Dn++]=io,jn[Dn++]=ro,ro=e,io=t}function Rf(e,t,n){ot[lt++]=Rt,ot[lt++]=Pt,ot[lt++]=yn,yn=e;var r=Rt;e=Pt;var i=32-gt(r)-1;r&=~(1<<i),n+=1;var o=32-gt(t)+i;if(30<o){var l=i-i%5;o=(r&(1<<l)-1).toString(32),r>>=l,i-=l,Rt=1<<32-gt(t)+i|n<<i|r,Pt=o+e}else Rt=1<<o|n<<i|r,Pt=e}function is(e){e.return!==null&&(sn(e,1),Rf(e,1,0))}function os(e){for(;e===ro;)ro=jn[--Dn],jn[Dn]=null,io=jn[--Dn],jn[Dn]=null;for(;e===yn;)yn=ot[--lt],ot[lt]=null,Pt=ot[--lt],ot[lt]=null,Rt=ot[--lt],ot[lt]=null}var qe=null,Ze=null,fe=!1,mt=null;function Pf(e,t){var n=at(5,null,null,0);n.elementType="DELETED",n.stateNode=t,n.return=e,t=e.deletions,t===null?(e.deletions=[n],e.flags|=16):t.push(n)}function Nu(e,t){switch(e.tag){case 5:var n=e.type;return t=t.nodeType!==1||n.toLowerCase()!==t.nodeName.toLowerCase()?null:t,t!==null?(e.stateNode=t,qe=e,Ze=Gt(t.firstChild),!0):!1;case 6:return t=e.pendingProps===""||t.nodeType!==3?null:t,t!==null?(e.stateNode=t,qe=e,Ze=null,!0):!1;case 13:return t=t.nodeType!==8?null:t,t!==null?(n=yn!==null?{id:Rt,overflow:Pt}:null,e.memoizedState={dehydrated:t,treeContext:n,retryLane:1073741824},n=at(18,null,null,0),n.stateNode=t,n.return=e,e.child=n,qe=e,Ze=null,!0):!1;default:return!1}}function ca(e){return(e.mode&1)!==0&&(e.flags&128)===0}function fa(e){if(fe){var t=Ze;if(t){var n=t;if(!Nu(e,t)){if(ca(e))throw Error(E(418));t=Gt(n.nextSibling);var r=qe;t&&Nu(e,t)?Pf(r,n):(e.flags=e.flags&-4097|2,fe=!1,qe=e)}}else{if(ca(e))throw Error(E(418));e.flags=e.flags&-4097|2,fe=!1,qe=e}}}function Ru(e){for(e=e.return;e!==null&&e.tag!==5&&e.tag!==3&&e.tag!==13;)e=e.return;qe=e}function xi(e){if(e!==qe)return!1;if(!fe)return Ru(e),fe=!0,!1;var t;if((t=e.tag!==3)&&!(t=e.tag!==5)&&(t=e.type,t=t!=="head"&&t!=="body"&&!la(e.type,e.memoizedProps)),t&&(t=Ze)){if(ca(e))throw Tf(),Error(E(418));for(;t;)Pf(e,t),t=Gt(t.nextSibling)}if(Ru(e),e.tag===13){if(e=e.memoizedState,e=e!==null?e.dehydrated:null,!e)throw Error(E(317));e:{for(e=e.nextSibling,t=0;e;){if(e.nodeType===8){var n=e.data;if(n==="/$"){if(t===0){Ze=Gt(e.nextSibling);break e}t--}else n!=="$"&&n!=="$!"&&n!=="$?"||t++}e=e.nextSibling}Ze=null}}else Ze=qe?Gt(e.stateNode.nextSibling):null;return!0}function Tf(){for(var e=Ze;e;)e=Gt(e.nextSibling)}function Zn(){Ze=qe=null,fe=!1}function ls(e){mt===null?mt=[e]:mt.push(e)}var Xh=_t.ReactCurrentBatchConfig;function pt(e,t){if(e&&e.defaultProps){t=me({},t),e=e.defaultProps;for(var n in e)t[n]===void 0&&(t[n]=e[n]);return t}return t}var oo=ln(null),lo=null,Fn=null,as=null;function ss(){as=Fn=lo=null}function us(e){var t=oo.current;ue(oo),e._currentValue=t}function da(e,t,n){for(;e!==null;){var r=e.alternate;if((e.childLanes&t)!==t?(e.childLanes|=t,r!==null&&(r.childLanes|=t)):r!==null&&(r.childLanes&t)!==t&&(r.childLanes|=t),e===n)break;e=e.return}}function Gn(e,t){lo=e,as=Fn=null,e=e.dependencies,e!==null&&e.firstContext!==null&&(e.lanes&t&&(Ve=!0),e.firstContext=null)}function ut(e){var t=e._currentValue;if(as!==e)if(e={context:e,memoizedValue:t,next:null},Fn===null){if(lo===null)throw Error(E(308));Fn=e,lo.dependencies={lanes:0,firstContext:e}}else Fn=Fn.next=e;return t}var pn=null;function cs(e){pn===null?pn=[e]:pn.push(e)}function If(e,t,n,r){var i=t.interleaved;return i===null?(n.next=n,cs(t)):(n.next=i.next,i.next=n),t.interleaved=n,Lt(e,r)}function Lt(e,t){e.lanes|=t;var n=e.alternate;for(n!==null&&(n.lanes|=t),n=e,e=e.return;e!==null;)e.childLanes|=t,n=e.alternate,n!==null&&(n.childLanes|=t),n=e,e=e.return;return n.tag===3?n.stateNode:null}var jt=!1;function fs(e){e.updateQueue={baseState:e.memoizedState,firstBaseUpdate:null,lastBaseUpdate:null,shared:{pending:null,interleaved:null,lanes:0},effects:null}}function zf(e,t){e=e.updateQueue,t.updateQueue===e&&(t.updateQueue={baseState:e.baseState,firstBaseUpdate:e.firstBaseUpdate,lastBaseUpdate:e.lastBaseUpdate,shared:e.shared,effects:e.effects})}function Tt(e,t){return{eventTime:e,lane:t,tag:0,payload:null,callback:null,next:null}}function Yt(e,t,n){var r=e.updateQueue;if(r===null)return null;if(r=r.shared,W&2){var i=r.pending;return i===null?t.next=t:(t.next=i.next,i.next=t),r.pending=t,Lt(e,n)}return i=r.interleaved,i===null?(t.next=t,cs(r)):(t.next=i.next,i.next=t),r.interleaved=t,Lt(e,n)}function Ui(e,t,n){if(t=t.updateQueue,t!==null&&(t=t.shared,(n&4194240)!==0)){var r=t.lanes;r&=e.pendingLanes,n|=r,t.lanes=n,Xa(e,n)}}function Pu(e,t){var n=e.updateQueue,r=e.alternate;if(r!==null&&(r=r.updateQueue,n===r)){var i=null,o=null;if(n=n.firstBaseUpdate,n!==null){do{var l={eventTime:n.eventTime,lane:n.lane,tag:n.tag,payload:n.payload,callback:n.callback,next:null};o===null?i=o=l:o=o.next=l,n=n.next}while(n!==null);o===null?i=o=t:o=o.next=t}else i=o=t;n={baseState:r.baseState,firstBaseUpdate:i,lastBaseUpdate:o,shared:r.shared,effects:r.effects},e.updateQueue=n;return}e=n.lastBaseUpdate,e===null?n.firstBaseUpdate=t:e.next=t,n.lastBaseUpdate=t}function ao(e,t,n,r){var i=e.updateQueue;jt=!1;var o=i.firstBaseUpdate,l=i.lastBaseUpdate,a=i.shared.pending;if(a!==null){i.shared.pending=null;var s=a,u=s.next;s.next=null,l===null?o=u:l.next=u,l=s;var f=e.alternate;f!==null&&(f=f.updateQueue,a=f.lastBaseUpdate,a!==l&&(a===null?f.firstBaseUpdate=u:a.next=u,f.lastBaseUpdate=s))}if(o!==null){var p=i.baseState;l=0,f=u=s=null,a=o;do{var h=a.lane,g=a.eventTime;if((r&h)===h){f!==null&&(f=f.next={eventTime:g,lane:0,tag:a.tag,payload:a.payload,callback:a.callback,next:null});e:{var v=e,y=a;switch(h=t,g=n,y.tag){case 1:if(v=y.payload,typeof v=="function"){p=v.call(g,p,h);break e}p=v;break e;case 3:v.flags=v.flags&-65537|128;case 0:if(v=y.payload,h=typeof v=="function"?v.call(g,p,h):v,h==null)break e;p=me({},p,h);break e;case 2:jt=!0}}a.callback!==null&&a.lane!==0&&(e.flags|=64,h=i.effects,h===null?i.effects=[a]:h.push(a))}else g={eventTime:g,lane:h,tag:a.tag,payload:a.payload,callback:a.callback,next:null},f===null?(u=f=g,s=p):f=f.next=g,l|=h;if(a=a.next,a===null){if(a=i.shared.pending,a===null)break;h=a,a=h.next,h.next=null,i.lastBaseUpdate=h,i.shared.pending=null}}while(1);if(f===null&&(s=p),i.baseState=s,i.firstBaseUpdate=u,i.lastBaseUpdate=f,t=i.shared.interleaved,t!==null){i=t;do l|=i.lane,i=i.next;while(i!==t)}else o===null&&(i.shared.lanes=0);An|=l,e.lanes=l,e.memoizedState=p}}function Tu(e,t,n){if(e=t.effects,t.effects=null,e!==null)for(t=0;t<e.length;t++){var r=e[t],i=r.callback;if(i!==null){if(r.callback=null,r=n,typeof i!="function")throw Error(E(191,i));i.call(r)}}}var Lf=new Tc.Component().refs;function pa(e,t,n,r){t=e.memoizedState,n=n(r,t),n=n==null?t:me({},t,n),e.memoizedState=n,e.lanes===0&&(e.updateQueue.baseState=n)}var Io={isMounted:function(e){return(e=e._reactInternals)?En(e)===e:!1},enqueueSetState:function(e,t,n){e=e._reactInternals;var r=De(),i=Jt(e),o=Tt(r,i);o.payload=t,n!=null&&(o.callback=n),t=Yt(e,o,i),t!==null&&(vt(t,e,i,r),Ui(t,e,i))},enqueueReplaceState:function(e,t,n){e=e._reactInternals;var r=De(),i=Jt(e),o=Tt(r,i);o.tag=1,o.payload=t,n!=null&&(o.callback=n),t=Yt(e,o,i),t!==null&&(vt(t,e,i,r),Ui(t,e,i))},enqueueForceUpdate:function(e,t){e=e._reactInternals;var n=De(),r=Jt(e),i=Tt(n,r);i.tag=2,t!=null&&(i.callback=t),t=Yt(e,i,r),t!==null&&(vt(t,e,r,n),Ui(t,e,r))}};function Iu(e,t,n,r,i,o,l){return e=e.stateNode,typeof e.shouldComponentUpdate=="function"?e.shouldComponentUpdate(r,o,l):t.prototype&&t.prototype.isPureReactComponent?!Br(n,r)||!Br(i,o):!0}function Of(e,t,n){var r=!1,i=rn,o=t.contextType;return typeof o=="object"&&o!==null?o=ut(o):(i=Ke(t)?vn:Ue.current,r=t.contextTypes,o=(r=r!=null)?Jn(e,i):rn),t=new t(n,o),e.memoizedState=t.state!==null&&t.state!==void 0?t.state:null,t.updater=Io,e.stateNode=t,t._reactInternals=e,r&&(e=e.stateNode,e.__reactInternalMemoizedUnmaskedChildContext=i,e.__reactInternalMemoizedMaskedChildContext=o),t}function zu(e,t,n,r){e=t.state,typeof t.componentWillReceiveProps=="function"&&t.componentWillReceiveProps(n,r),typeof t.UNSAFE_componentWillReceiveProps=="function"&&t.UNSAFE_componentWillReceiveProps(n,r),t.state!==e&&Io.enqueueReplaceState(t,t.state,null)}function ha(e,t,n,r){var i=e.stateNode;i.props=n,i.state=e.memoizedState,i.refs=Lf,fs(e);var o=t.contextType;typeof o=="object"&&o!==null?i.context=ut(o):(o=Ke(t)?vn:Ue.current,i.context=Jn(e,o)),i.state=e.memoizedState,o=t.getDerivedStateFromProps,typeof o=="function"&&(pa(e,t,o,n),i.state=e.memoizedState),typeof t.getDerivedStateFromProps=="function"||typeof i.getSnapshotBeforeUpdate=="function"||typeof i.UNSAFE_componentWillMount!="function"&&typeof i.componentWillMount!="function"||(t=i.state,typeof i.componentWillMount=="function"&&i.componentWillMount(),typeof i.UNSAFE_componentWillMount=="function"&&i.UNSAFE_componentWillMount(),t!==i.state&&Io.enqueueReplaceState(i,i.state,null),ao(e,n,i,r),i.state=e.memoizedState),typeof i.componentDidMount=="function"&&(e.flags|=4194308)}function mr(e,t,n){if(e=n.ref,e!==null&&typeof e!="function"&&typeof e!="object"){if(n._owner){if(n=n._owner,n){if(n.tag!==1)throw Error(E(309));var r=n.stateNode}if(!r)throw Error(E(147,e));var i=r,o=""+e;return t!==null&&t.ref!==null&&typeof t.ref=="function"&&t.ref._stringRef===o?t.ref:(t=function(l){var a=i.refs;a===Lf&&(a=i.refs={}),l===null?delete a[o]:a[o]=l},t._stringRef=o,t)}if(typeof e!="string")throw Error(E(284));if(!n._owner)throw Error(E(290,e))}return e}function Si(e,t){throw e=Object.prototype.toString.call(t),Error(E(31,e==="[object Object]"?"object with keys {"+Object.keys(t).join(", ")+"}":e))}function Lu(e){var t=e._init;return t(e._payload)}function _f(e){function t(d,c){if(e){var m=d.deletions;m===null?(d.deletions=[c],d.flags|=16):m.push(c)}}function n(d,c){if(!e)return null;for(;c!==null;)t(d,c),c=c.sibling;return null}function r(d,c){for(d=new Map;c!==null;)c.key!==null?d.set(c.key,c):d.set(c.index,c),c=c.sibling;return d}function i(d,c){return d=Zt(d,c),d.index=0,d.sibling=null,d}function o(d,c,m){return d.index=m,e?(m=d.alternate,m!==null?(m=m.index,m<c?(d.flags|=2,c):m):(d.flags|=2,c)):(d.flags|=1048576,c)}function l(d){return e&&d.alternate===null&&(d.flags|=2),d}function a(d,c,m,w){return c===null||c.tag!==6?(c=Nl(m,d.mode,w),c.return=d,c):(c=i(c,m),c.return=d,c)}function s(d,c,m,w){var C=m.type;return C===Ln?f(d,c,m.props.children,w,m.key):c!==null&&(c.elementType===C||typeof C=="object"&&C!==null&&C.$$typeof===Ut&&Lu(C)===c.type)?(w=i(c,m.props),w.ref=mr(d,c,m),w.return=d,w):(w=Hi(m.type,m.key,m.props,null,d.mode,w),w.ref=mr(d,c,m),w.return=d,w)}function u(d,c,m,w){return c===null||c.tag!==4||c.stateNode.containerInfo!==m.containerInfo||c.stateNode.implementation!==m.implementation?(c=Rl(m,d.mode,w),c.return=d,c):(c=i(c,m.children||[]),c.return=d,c)}function f(d,c,m,w,C){return c===null||c.tag!==7?(c=gn(m,d.mode,w,C),c.return=d,c):(c=i(c,m),c.return=d,c)}function p(d,c,m){if(typeof c=="string"&&c!==""||typeof c=="number")return c=Nl(""+c,d.mode,m),c.return=d,c;if(typeof c=="object"&&c!==null){switch(c.$$typeof){case di:return m=Hi(c.type,c.key,c.props,null,d.mode,m),m.ref=mr(d,null,c),m.return=d,m;case zn:return c=Rl(c,d.mode,m),c.return=d,c;case Ut:var w=c._init;return p(d,w(c._payload),m)}if(wr(c)||cr(c))return c=gn(c,d.mode,m,null),c.return=d,c;Si(d,c)}return null}function h(d,c,m,w){var C=c!==null?c.key:null;if(typeof m=="string"&&m!==""||typeof m=="number")return C!==null?null:a(d,c,""+m,w);if(typeof m=="object"&&m!==null){switch(m.$$typeof){case di:return m.key===C?s(d,c,m,w):null;case zn:return m.key===C?u(d,c,m,w):null;case Ut:return C=m._init,h(d,c,C(m._payload),w)}if(wr(m)||cr(m))return C!==null?null:f(d,c,m,w,null);Si(d,m)}return null}function g(d,c,m,w,C){if(typeof w=="string"&&w!==""||typeof w=="number")return d=d.get(m)||null,a(c,d,""+w,C);if(typeof w=="object"&&w!==null){switch(w.$$typeof){case di:return d=d.get(w.key===null?m:w.key)||null,s(c,d,w,C);case zn:return d=d.get(w.key===null?m:w.key)||null,u(c,d,w,C);case Ut:var T=w._init;return g(d,c,m,T(w._payload),C)}if(wr(w)||cr(w))return d=d.get(m)||null,f(c,d,w,C,null);Si(c,w)}return null}function v(d,c,m,w){for(var C=null,T=null,L=c,R=c=0,B=null;L!==null&&R<m.length;R++){L.index>R?(B=L,L=null):B=L.sibling;var U=h(d,L,m[R],w);if(U===null){L===null&&(L=B);break}e&&L&&U.alternate===null&&t(d,L),c=o(U,c,R),T===null?C=U:T.sibling=U,T=U,L=B}if(R===m.length)return n(d,L),fe&&sn(d,R),C;if(L===null){for(;R<m.length;R++)L=p(d,m[R],w),L!==null&&(c=o(L,c,R),T===null?C=L:T.sibling=L,T=L);return fe&&sn(d,R),C}for(L=r(d,L);R<m.length;R++)B=g(L,d,R,m[R],w),B!==null&&(e&&B.alternate!==null&&L.delete(B.key===null?R:B.key),c=o(B,c,R),T===null?C=B:T.sibling=B,T=B);return e&&L.forEach(function(oe){return t(d,oe)}),fe&&sn(d,R),C}function y(d,c,m,w){var C=cr(m);if(typeof C!="function")throw Error(E(150));if(m=C.call(m),m==null)throw Error(E(151));for(var T=C=null,L=c,R=c=0,B=null,U=m.next();L!==null&&!U.done;R++,U=m.next()){L.index>R?(B=L,L=null):B=L.sibling;var oe=h(d,L,U.value,w);if(oe===null){L===null&&(L=B);break}e&&L&&oe.alternate===null&&t(d,L),c=o(oe,c,R),T===null?C=oe:T.sibling=oe,T=oe,L=B}if(U.done)return n(d,L),fe&&sn(d,R),C;if(L===null){for(;!U.done;R++,U=m.next())U=p(d,U.value,w),U!==null&&(c=o(U,c,R),T===null?C=U:T.sibling=U,T=U);return fe&&sn(d,R),C}for(L=r(d,L);!U.done;R++,U=m.next())U=g(L,d,R,U.value,w),U!==null&&(e&&U.alternate!==null&&L.delete(U.key===null?R:U.key),c=o(U,c,R),T===null?C=U:T.sibling=U,T=U);return e&&L.forEach(function(Q){return t(d,Q)}),fe&&sn(d,R),C}function x(d,c,m,w){if(typeof m=="object"&&m!==null&&m.type===Ln&&m.key===null&&(m=m.props.children),typeof m=="object"&&m!==null){switch(m.$$typeof){case di:e:{for(var C=m.key,T=c;T!==null;){if(T.key===C){if(C=m.type,C===Ln){if(T.tag===7){n(d,T.sibling),c=i(T,m.props.children),c.return=d,d=c;break e}}else if(T.elementType===C||typeof C=="object"&&C!==null&&C.$$typeof===Ut&&Lu(C)===T.type){n(d,T.sibling),c=i(T,m.props),c.ref=mr(d,T,m),c.return=d,d=c;break e}n(d,T);break}else t(d,T);T=T.sibling}m.type===Ln?(c=gn(m.props.children,d.mode,w,m.key),c.return=d,d=c):(w=Hi(m.type,m.key,m.props,null,d.mode,w),w.ref=mr(d,c,m),w.return=d,d=w)}return l(d);case zn:e:{for(T=m.key;c!==null;){if(c.key===T)if(c.tag===4&&c.stateNode.containerInfo===m.containerInfo&&c.stateNode.implementation===m.implementation){n(d,c.sibling),c=i(c,m.children||[]),c.return=d,d=c;break e}else{n(d,c);break}else t(d,c);c=c.sibling}c=Rl(m,d.mode,w),c.return=d,d=c}return l(d);case Ut:return T=m._init,x(d,c,T(m._payload),w)}if(wr(m))return v(d,c,m,w);if(cr(m))return y(d,c,m,w);Si(d,m)}return typeof m=="string"&&m!==""||typeof m=="number"?(m=""+m,c!==null&&c.tag===6?(n(d,c.sibling),c=i(c,m),c.return=d,d=c):(n(d,c),c=Nl(m,d.mode,w),c.return=d,d=c),l(d)):n(d,c)}return x}var qn=_f(!0),Mf=_f(!1),li={},Ct=ln(li),Qr=ln(li),Kr=ln(li);function hn(e){if(e===li)throw Error(E(174));return e}function ds(e,t){switch(le(Kr,t),le(Qr,e),le(Ct,li),e=t.nodeType,e){case 9:case 11:t=(t=t.documentElement)?t.namespaceURI:Ql(null,"");break;default:e=e===8?t.parentNode:t,t=e.namespaceURI||null,e=e.tagName,t=Ql(t,e)}ue(Ct),le(Ct,t)}function er(){ue(Ct),ue(Qr),ue(Kr)}function bf(e){hn(Kr.current);var t=hn(Ct.current),n=Ql(t,e.type);t!==n&&(le(Qr,e),le(Ct,n))}function ps(e){Qr.current===e&&(ue(Ct),ue(Qr))}var pe=ln(0);function so(e){for(var t=e;t!==null;){if(t.tag===13){var n=t.memoizedState;if(n!==null&&(n=n.dehydrated,n===null||n.data==="$?"||n.data==="$!"))return t}else if(t.tag===19&&t.memoizedProps.revealOrder!==void 0){if(t.flags&128)return t}else if(t.child!==null){t.child.return=t,t=t.child;continue}if(t===e)break;for(;t.sibling===null;){if(t.return===null||t.return===e)return null;t=t.return}t.sibling.return=t.return,t=t.sibling}return null}var Al=[];function hs(){for(var e=0;e<Al.length;e++)Al[e]._workInProgressVersionPrimary=null;Al.length=0}var ji=_t.ReactCurrentDispatcher,kl=_t.ReactCurrentBatchConfig,wn=0,he=null,xe=null,Ce=null,uo=!1,Pr=!1,Gr=0,Jh=0;function _e(){throw Error(E(321))}function ms(e,t){if(t===null)return!1;for(var n=0;n<t.length&&n<e.length;n++)if(!yt(e[n],t[n]))return!1;return!0}function gs(e,t,n,r,i,o){if(wn=o,he=t,t.memoizedState=null,t.updateQueue=null,t.lanes=0,ji.current=e===null||e.memoizedState===null?t0:n0,e=n(r,i),Pr){o=0;do{if(Pr=!1,Gr=0,25<=o)throw Error(E(301));o+=1,Ce=xe=null,t.updateQueue=null,ji.current=r0,e=n(r,i)}while(Pr)}if(ji.current=co,t=xe!==null&&xe.next!==null,wn=0,Ce=xe=he=null,uo=!1,t)throw Error(E(300));return e}function vs(){var e=Gr!==0;return Gr=0,e}function At(){var e={memoizedState:null,baseState:null,baseQueue:null,queue:null,next:null};return Ce===null?he.memoizedState=Ce=e:Ce=Ce.next=e,Ce}function ct(){if(xe===null){var e=he.alternate;e=e!==null?e.memoizedState:null}else e=xe.next;var t=Ce===null?he.memoizedState:Ce.next;if(t!==null)Ce=t,xe=e;else{if(e===null)throw Error(E(310));xe=e,e={memoizedState:xe.memoizedState,baseState:xe.baseState,baseQueue:xe.baseQueue,queue:xe.queue,next:null},Ce===null?he.memoizedState=Ce=e:Ce=Ce.next=e}return Ce}function Yr(e,t){return typeof t=="function"?t(e):t}function xl(e){var t=ct(),n=t.queue;if(n===null)throw Error(E(311));n.lastRenderedReducer=e;var r=xe,i=r.baseQueue,o=n.pending;if(o!==null){if(i!==null){var l=i.next;i.next=o.next,o.next=l}r.baseQueue=i=o,n.pending=null}if(i!==null){o=i.next,r=r.baseState;var a=l=null,s=null,u=o;do{var f=u.lane;if((wn&f)===f)s!==null&&(s=s.next={lane:0,action:u.action,hasEagerState:u.hasEagerState,eagerState:u.eagerState,next:null}),r=u.hasEagerState?u.eagerState:e(r,u.action);else{var p={lane:f,action:u.action,hasEagerState:u.hasEagerState,eagerState:u.eagerState,next:null};s===null?(a=s=p,l=r):s=s.next=p,he.lanes|=f,An|=f}u=u.next}while(u!==null&&u!==o);s===null?l=r:s.next=a,yt(r,t.memoizedState)||(Ve=!0),t.memoizedState=r,t.baseState=l,t.baseQueue=s,n.lastRenderedState=r}if(e=n.interleaved,e!==null){i=e;do o=i.lane,he.lanes|=o,An|=o,i=i.next;while(i!==e)}else i===null&&(n.lanes=0);return[t.memoizedState,n.dispatch]}function Sl(e){var t=ct(),n=t.queue;if(n===null)throw Error(E(311));n.lastRenderedReducer=e;var r=n.dispatch,i=n.pending,o=t.memoizedState;if(i!==null){n.pending=null;var l=i=i.next;do o=e(o,l.action),l=l.next;while(l!==i);yt(o,t.memoizedState)||(Ve=!0),t.memoizedState=o,t.baseQueue===null&&(t.baseState=o),n.lastRenderedState=o}return[o,r]}function Uf(){}function jf(e,t){var n=he,r=ct(),i=t(),o=!yt(r.memoizedState,i);if(o&&(r.memoizedState=i,Ve=!0),r=r.queue,ys($f.bind(null,n,r,e),[e]),r.getSnapshot!==t||o||Ce!==null&&Ce.memoizedState.tag&1){if(n.flags|=2048,Xr(9,Ff.bind(null,n,r,i,t),void 0,null),Ee===null)throw Error(E(349));wn&30||Df(n,t,i)}return i}function Df(e,t,n){e.flags|=16384,e={getSnapshot:t,value:n},t=he.updateQueue,t===null?(t={lastEffect:null,stores:null},he.updateQueue=t,t.stores=[e]):(n=t.stores,n===null?t.stores=[e]:n.push(e))}function Ff(e,t,n,r){t.value=n,t.getSnapshot=r,Bf(t)&&Hf(e)}function $f(e,t,n){return n(function(){Bf(t)&&Hf(e)})}function Bf(e){var t=e.getSnapshot;e=e.value;try{var n=t();return!yt(e,n)}catch{return!0}}function Hf(e){var t=Lt(e,1);t!==null&&vt(t,e,1,-1)}function Ou(e){var t=At();return typeof e=="function"&&(e=e()),t.memoizedState=t.baseState=e,e={pending:null,interleaved:null,lanes:0,dispatch:null,lastRenderedReducer:Yr,lastRenderedState:e},t.queue=e,e=e.dispatch=e0.bind(null,he,e),[t.memoizedState,e]}function Xr(e,t,n,r){return e={tag:e,create:t,destroy:n,deps:r,next:null},t=he.updateQueue,t===null?(t={lastEffect:null,stores:null},he.updateQueue=t,t.lastEffect=e.next=e):(n=t.lastEffect,n===null?t.lastEffect=e.next=e:(r=n.next,n.next=e,e.next=r,t.lastEffect=e)),e}function Vf(){return ct().memoizedState}function Di(e,t,n,r){var i=At();he.flags|=e,i.memoizedState=Xr(1|t,n,void 0,r===void 0?null:r)}function zo(e,t,n,r){var i=ct();r=r===void 0?null:r;var o=void 0;if(xe!==null){var l=xe.memoizedState;if(o=l.destroy,r!==null&&ms(r,l.deps)){i.memoizedState=Xr(t,n,o,r);return}}he.flags|=e,i.memoizedState=Xr(1|t,n,o,r)}function _u(e,t){return Di(8390656,8,e,t)}function ys(e,t){return zo(2048,8,e,t)}function Wf(e,t){return zo(4,2,e,t)}function Qf(e,t){return zo(4,4,e,t)}function Kf(e,t){if(typeof t=="function")return e=e(),t(e),function(){t(null)};if(t!=null)return e=e(),t.current=e,function(){t.current=null}}function Gf(e,t,n){return n=n!=null?n.concat([e]):null,zo(4,4,Kf.bind(null,t,e),n)}function ws(){}function Yf(e,t){var n=ct();t=t===void 0?null:t;var r=n.memoizedState;return r!==null&&t!==null&&ms(t,r[1])?r[0]:(n.memoizedState=[e,t],e)}function Xf(e,t){var n=ct();t=t===void 0?null:t;var r=n.memoizedState;return r!==null&&t!==null&&ms(t,r[1])?r[0]:(e=e(),n.memoizedState=[e,t],e)}function Jf(e,t,n){return wn&21?(yt(n,t)||(n=qc(),he.lanes|=n,An|=n,e.baseState=!0),t):(e.baseState&&(e.baseState=!1,Ve=!0),e.memoizedState=n)}function Zh(e,t){var n=q;q=n!==0&&4>n?n:4,e(!0);var r=kl.transition;kl.transition={};try{e(!1),t()}finally{q=n,kl.transition=r}}function Zf(){return ct().memoizedState}function qh(e,t,n){var r=Jt(e);if(n={lane:r,action:n,hasEagerState:!1,eagerState:null,next:null},qf(e))ed(t,n);else if(n=If(e,t,n,r),n!==null){var i=De();vt(n,e,r,i),td(n,t,r)}}function e0(e,t,n){var r=Jt(e),i={lane:r,action:n,hasEagerState:!1,eagerState:null,next:null};if(qf(e))ed(t,i);else{var o=e.alternate;if(e.lanes===0&&(o===null||o.lanes===0)&&(o=t.lastRenderedReducer,o!==null))try{var l=t.lastRenderedState,a=o(l,n);if(i.hasEagerState=!0,i.eagerState=a,yt(a,l)){var s=t.interleaved;s===null?(i.next=i,cs(t)):(i.next=s.next,s.next=i),t.interleaved=i;return}}catch{}finally{}n=If(e,t,i,r),n!==null&&(i=De(),vt(n,e,r,i),td(n,t,r))}}function qf(e){var t=e.alternate;return e===he||t!==null&&t===he}function ed(e,t){Pr=uo=!0;var n=e.pending;n===null?t.next=t:(t.next=n.next,n.next=t),e.pending=t}function td(e,t,n){if(n&4194240){var r=t.lanes;r&=e.pendingLanes,n|=r,t.lanes=n,Xa(e,n)}}var co={readContext:ut,useCallback:_e,useContext:_e,useEffect:_e,useImperativeHandle:_e,useInsertionEffect:_e,useLayoutEffect:_e,useMemo:_e,useReducer:_e,useRef:_e,useState:_e,useDebugValue:_e,useDeferredValue:_e,useTransition:_e,useMutableSource:_e,useSyncExternalStore:_e,useId:_e,unstable_isNewReconciler:!1},t0={readContext:ut,useCallback:function(e,t){return At().memoizedState=[e,t===void 0?null:t],e},useContext:ut,useEffect:_u,useImperativeHandle:function(e,t,n){return n=n!=null?n.concat([e]):null,Di(4194308,4,Kf.bind(null,t,e),n)},useLayoutEffect:function(e,t){return Di(4194308,4,e,t)},useInsertionEffect:function(e,t){return Di(4,2,e,t)},useMemo:function(e,t){var n=At();return t=t===void 0?null:t,e=e(),n.memoizedState=[e,t],e},useReducer:function(e,t,n){var r=At();return t=n!==void 0?n(t):t,r.memoizedState=r.baseState=t,e={pending:null,interleaved:null,lanes:0,dispatch:null,lastRenderedReducer:e,lastRenderedState:t},r.queue=e,e=e.dispatch=qh.bind(null,he,e),[r.memoizedState,e]},useRef:function(e){var t=At();return e={current:e},t.memoizedState=e},useState:Ou,useDebugValue:ws,useDeferredValue:function(e){return At().memoizedState=e},useTransition:function(){var e=Ou(!1),t=e[0];return e=Zh.bind(null,e[1]),At().memoizedState=e,[t,e]},useMutableSource:function(){},useSyncExternalStore:function(e,t,n){var r=he,i=At();if(fe){if(n===void 0)throw Error(E(407));n=n()}else{if(n=t(),Ee===null)throw Error(E(349));wn&30||Df(r,t,n)}i.memoizedState=n;var o={value:n,getSnapshot:t};return i.queue=o,_u($f.bind(null,r,o,e),[e]),r.flags|=2048,Xr(9,Ff.bind(null,r,o,n,t),void 0,null),n},useId:function(){var e=At(),t=Ee.identifierPrefix;if(fe){var n=Pt,r=Rt;n=(r&~(1<<32-gt(r)-1)).toString(32)+n,t=":"+t+"R"+n,n=Gr++,0<n&&(t+="H"+n.toString(32)),t+=":"}else n=Jh++,t=":"+t+"r"+n.toString(32)+":";return e.memoizedState=t},unstable_isNewReconciler:!1},n0={readContext:ut,useCallback:Yf,useContext:ut,useEffect:ys,useImperativeHandle:Gf,useInsertionEffect:Wf,useLayoutEffect:Qf,useMemo:Xf,useReducer:xl,useRef:Vf,useState:function(){return xl(Yr)},useDebugValue:ws,useDeferredValue:function(e){var t=ct();return Jf(t,xe.memoizedState,e)},useTransition:function(){var e=xl(Yr)[0],t=ct().memoizedState;return[e,t]},useMutableSource:Uf,useSyncExternalStore:jf,useId:Zf,unstable_isNewReconciler:!1},r0={readContext:ut,useCallback:Yf,useContext:ut,useEffect:ys,useImperativeHandle:Gf,useInsertionEffect:Wf,useLayoutEffect:Qf,useMemo:Xf,useReducer:Sl,useRef:Vf,useState:function(){return Sl(Yr)},useDebugValue:ws,useDeferredValue:function(e){var t=ct();return xe===null?t.memoizedState=e:Jf(t,xe.memoizedState,e)},useTransition:function(){var e=Sl(Yr)[0],t=ct().memoizedState;return[e,t]},useMutableSource:Uf,useSyncExternalStore:jf,useId:Zf,unstable_isNewReconciler:!1};function tr(e,t){try{var n="",r=t;do n+=zp(r),r=r.return;while(r);var i=n}catch(o){i=`
Error generating stack: `+o.message+`
`+o.stack}return{value:e,source:t,stack:i,digest:null}}function Cl(e,t,n){return{value:e,source:null,stack:n??null,digest:t??null}}function ma(e,t){try{console.error(t.value)}catch(n){setTimeout(function(){throw n})}}var i0=typeof WeakMap=="function"?WeakMap:Map;function nd(e,t,n){n=Tt(-1,n),n.tag=3,n.payload={element:null};var r=t.value;return n.callback=function(){po||(po=!0,Ea=r),ma(e,t)},n}function rd(e,t,n){n=Tt(-1,n),n.tag=3;var r=e.type.getDerivedStateFromError;if(typeof r=="function"){var i=t.value;n.payload=function(){return r(i)},n.callback=function(){ma(e,t)}}var o=e.stateNode;return o!==null&&typeof o.componentDidCatch=="function"&&(n.callback=function(){ma(e,t),typeof r!="function"&&(Xt===null?Xt=new Set([this]):Xt.add(this));var l=t.stack;this.componentDidCatch(t.value,{componentStack:l!==null?l:""})}),n}function Mu(e,t,n){var r=e.pingCache;if(r===null){r=e.pingCache=new i0;var i=new Set;r.set(t,i)}else i=r.get(t),i===void 0&&(i=new Set,r.set(t,i));i.has(n)||(i.add(n),e=y0.bind(null,e,t,n),t.then(e,e))}function bu(e){do{var t;if((t=e.tag===13)&&(t=e.memoizedState,t=t!==null?t.dehydrated!==null:!0),t)return e;e=e.return}while(e!==null);return null}function Uu(e,t,n,r,i){return e.mode&1?(e.flags|=65536,e.lanes=i,e):(e===t?e.flags|=65536:(e.flags|=128,n.flags|=131072,n.flags&=-52805,n.tag===1&&(n.alternate===null?n.tag=17:(t=Tt(-1,1),t.tag=2,Yt(n,t,1))),n.lanes|=1),e)}var o0=_t.ReactCurrentOwner,Ve=!1;function je(e,t,n,r){t.child=e===null?Mf(t,null,n,r):qn(t,e.child,n,r)}function ju(e,t,n,r,i){n=n.render;var o=t.ref;return Gn(t,i),r=gs(e,t,n,r,o,i),n=vs(),e!==null&&!Ve?(t.updateQueue=e.updateQueue,t.flags&=-2053,e.lanes&=~i,Ot(e,t,i)):(fe&&n&&is(t),t.flags|=1,je(e,t,r,i),t.child)}function Du(e,t,n,r,i){if(e===null){var o=n.type;return typeof o=="function"&&!Rs(o)&&o.defaultProps===void 0&&n.compare===null&&n.defaultProps===void 0?(t.tag=15,t.type=o,id(e,t,o,r,i)):(e=Hi(n.type,null,r,t,t.mode,i),e.ref=t.ref,e.return=t,t.child=e)}if(o=e.child,!(e.lanes&i)){var l=o.memoizedProps;if(n=n.compare,n=n!==null?n:Br,n(l,r)&&e.ref===t.ref)return Ot(e,t,i)}return t.flags|=1,e=Zt(o,r),e.ref=t.ref,e.return=t,t.child=e}function id(e,t,n,r,i){if(e!==null){var o=e.memoizedProps;if(Br(o,r)&&e.ref===t.ref)if(Ve=!1,t.pendingProps=r=o,(e.lanes&i)!==0)e.flags&131072&&(Ve=!0);else return t.lanes=e.lanes,Ot(e,t,i)}return ga(e,t,n,r,i)}function od(e,t,n){var r=t.pendingProps,i=r.children,o=e!==null?e.memoizedState:null;if(r.mode==="hidden")if(!(t.mode&1))t.memoizedState={baseLanes:0,cachePool:null,transitions:null},le(Bn,Je),Je|=n;else{if(!(n&1073741824))return e=o!==null?o.baseLanes|n:n,t.lanes=t.childLanes=1073741824,t.memoizedState={baseLanes:e,cachePool:null,transitions:null},t.updateQueue=null,le(Bn,Je),Je|=e,null;t.memoizedState={baseLanes:0,cachePool:null,transitions:null},r=o!==null?o.baseLanes:n,le(Bn,Je),Je|=r}else o!==null?(r=o.baseLanes|n,t.memoizedState=null):r=n,le(Bn,Je),Je|=r;return je(e,t,i,n),t.child}function ld(e,t){var n=t.ref;(e===null&&n!==null||e!==null&&e.ref!==n)&&(t.flags|=512,t.flags|=2097152)}function ga(e,t,n,r,i){var o=Ke(n)?vn:Ue.current;return o=Jn(t,o),Gn(t,i),n=gs(e,t,n,r,o,i),r=vs(),e!==null&&!Ve?(t.updateQueue=e.updateQueue,t.flags&=-2053,e.lanes&=~i,Ot(e,t,i)):(fe&&r&&is(t),t.flags|=1,je(e,t,n,i),t.child)}function Fu(e,t,n,r,i){if(Ke(n)){var o=!0;no(t)}else o=!1;if(Gn(t,i),t.stateNode===null)Fi(e,t),Of(t,n,r),ha(t,n,r,i),r=!0;else if(e===null){var l=t.stateNode,a=t.memoizedProps;l.props=a;var s=l.context,u=n.contextType;typeof u=="object"&&u!==null?u=ut(u):(u=Ke(n)?vn:Ue.current,u=Jn(t,u));var f=n.getDerivedStateFromProps,p=typeof f=="function"||typeof l.getSnapshotBeforeUpdate=="function";p||typeof l.UNSAFE_componentWillReceiveProps!="function"&&typeof l.componentWillReceiveProps!="function"||(a!==r||s!==u)&&zu(t,l,r,u),jt=!1;var h=t.memoizedState;l.state=h,ao(t,r,l,i),s=t.memoizedState,a!==r||h!==s||Qe.current||jt?(typeof f=="function"&&(pa(t,n,f,r),s=t.memoizedState),(a=jt||Iu(t,n,a,r,h,s,u))?(p||typeof l.UNSAFE_componentWillMount!="function"&&typeof l.componentWillMount!="function"||(typeof l.componentWillMount=="function"&&l.componentWillMount(),typeof l.UNSAFE_componentWillMount=="function"&&l.UNSAFE_componentWillMount()),typeof l.componentDidMount=="function"&&(t.flags|=4194308)):(typeof l.componentDidMount=="function"&&(t.flags|=4194308),t.memoizedProps=r,t.memoizedState=s),l.props=r,l.state=s,l.context=u,r=a):(typeof l.componentDidMount=="function"&&(t.flags|=4194308),r=!1)}else{l=t.stateNode,zf(e,t),a=t.memoizedProps,u=t.type===t.elementType?a:pt(t.type,a),l.props=u,p=t.pendingProps,h=l.context,s=n.contextType,typeof s=="object"&&s!==null?s=ut(s):(s=Ke(n)?vn:Ue.current,s=Jn(t,s));var g=n.getDerivedStateFromProps;(f=typeof g=="function"||typeof l.getSnapshotBeforeUpdate=="function")||typeof l.UNSAFE_componentWillReceiveProps!="function"&&typeof l.componentWillReceiveProps!="function"||(a!==p||h!==s)&&zu(t,l,r,s),jt=!1,h=t.memoizedState,l.state=h,ao(t,r,l,i);var v=t.memoizedState;a!==p||h!==v||Qe.current||jt?(typeof g=="function"&&(pa(t,n,g,r),v=t.memoizedState),(u=jt||Iu(t,n,u,r,h,v,s)||!1)?(f||typeof l.UNSAFE_componentWillUpdate!="function"&&typeof l.componentWillUpdate!="function"||(typeof l.componentWillUpdate=="function"&&l.componentWillUpdate(r,v,s),typeof l.UNSAFE_componentWillUpdate=="function"&&l.UNSAFE_componentWillUpdate(r,v,s)),typeof l.componentDidUpdate=="function"&&(t.flags|=4),typeof l.getSnapshotBeforeUpdate=="function"&&(t.flags|=1024)):(typeof l.componentDidUpdate!="function"||a===e.memoizedProps&&h===e.memoizedState||(t.flags|=4),typeof l.getSnapshotBeforeUpdate!="function"||a===e.memoizedProps&&h===e.memoizedState||(t.flags|=1024),t.memoizedProps=r,t.memoizedState=v),l.props=r,l.state=v,l.context=s,r=u):(typeof l.componentDidUpdate!="function"||a===e.memoizedProps&&h===e.memoizedState||(t.flags|=4),typeof l.getSnapshotBeforeUpdate!="function"||a===e.memoizedProps&&h===e.memoizedState||(t.flags|=1024),r=!1)}return va(e,t,n,r,o,i)}function va(e,t,n,r,i,o){ld(e,t);var l=(t.flags&128)!==0;if(!r&&!l)return i&&Eu(t,n,!1),Ot(e,t,o);r=t.stateNode,o0.current=t;var a=l&&typeof n.getDerivedStateFromError!="function"?null:r.render();return t.flags|=1,e!==null&&l?(t.child=qn(t,e.child,null,o),t.child=qn(t,null,a,o)):je(e,t,a,o),t.memoizedState=r.state,i&&Eu(t,n,!0),t.child}function ad(e){var t=e.stateNode;t.pendingContext?Cu(e,t.pendingContext,t.pendingContext!==t.context):t.context&&Cu(e,t.context,!1),ds(e,t.containerInfo)}function $u(e,t,n,r,i){return Zn(),ls(i),t.flags|=256,je(e,t,n,r),t.child}var ya={dehydrated:null,treeContext:null,retryLane:0};function wa(e){return{baseLanes:e,cachePool:null,transitions:null}}function sd(e,t,n){var r=t.pendingProps,i=pe.current,o=!1,l=(t.flags&128)!==0,a;if((a=l)||(a=e!==null&&e.memoizedState===null?!1:(i&2)!==0),a?(o=!0,t.flags&=-129):(e===null||e.memoizedState!==null)&&(i|=1),le(pe,i&1),e===null)return fa(t),e=t.memoizedState,e!==null&&(e=e.dehydrated,e!==null)?(t.mode&1?e.data==="$!"?t.lanes=8:t.lanes=1073741824:t.lanes=1,null):(l=r.children,e=r.fallback,o?(r=t.mode,o=t.child,l={mode:"hidden",children:l},!(r&1)&&o!==null?(o.childLanes=0,o.pendingProps=l):o=_o(l,r,0,null),e=gn(e,r,n,null),o.return=t,e.return=t,o.sibling=e,t.child=o,t.child.memoizedState=wa(n),t.memoizedState=ya,e):As(t,l));if(i=e.memoizedState,i!==null&&(a=i.dehydrated,a!==null))return l0(e,t,l,r,a,i,n);if(o){o=r.fallback,l=t.mode,i=e.child,a=i.sibling;var s={mode:"hidden",children:r.children};return!(l&1)&&t.child!==i?(r=t.child,r.childLanes=0,r.pendingProps=s,t.deletions=null):(r=Zt(i,s),r.subtreeFlags=i.subtreeFlags&14680064),a!==null?o=Zt(a,o):(o=gn(o,l,n,null),o.flags|=2),o.return=t,r.return=t,r.sibling=o,t.child=r,r=o,o=t.child,l=e.child.memoizedState,l=l===null?wa(n):{baseLanes:l.baseLanes|n,cachePool:null,transitions:l.transitions},o.memoizedState=l,o.childLanes=e.childLanes&~n,t.memoizedState=ya,r}return o=e.child,e=o.sibling,r=Zt(o,{mode:"visible",children:r.children}),!(t.mode&1)&&(r.lanes=n),r.return=t,r.sibling=null,e!==null&&(n=t.deletions,n===null?(t.deletions=[e],t.flags|=16):n.push(e)),t.child=r,t.memoizedState=null,r}function As(e,t){return t=_o({mode:"visible",children:t},e.mode,0,null),t.return=e,e.child=t}function Ci(e,t,n,r){return r!==null&&ls(r),qn(t,e.child,null,n),e=As(t,t.pendingProps.children),e.flags|=2,t.memoizedState=null,e}function l0(e,t,n,r,i,o,l){if(n)return t.flags&256?(t.flags&=-257,r=Cl(Error(E(422))),Ci(e,t,l,r)):t.memoizedState!==null?(t.child=e.child,t.flags|=128,null):(o=r.fallback,i=t.mode,r=_o({mode:"visible",children:r.children},i,0,null),o=gn(o,i,l,null),o.flags|=2,r.return=t,o.return=t,r.sibling=o,t.child=r,t.mode&1&&qn(t,e.child,null,l),t.child.memoizedState=wa(l),t.memoizedState=ya,o);if(!(t.mode&1))return Ci(e,t,l,null);if(i.data==="$!"){if(r=i.nextSibling&&i.nextSibling.dataset,r)var a=r.dgst;return r=a,o=Error(E(419)),r=Cl(o,r,void 0),Ci(e,t,l,r)}if(a=(l&e.childLanes)!==0,Ve||a){if(r=Ee,r!==null){switch(l&-l){case 4:i=2;break;case 16:i=8;break;case 64:case 128:case 256:case 512:case 1024:case 2048:case 4096:case 8192:case 16384:case 32768:case 65536:case 131072:case 262144:case 524288:case 1048576:case 2097152:case 4194304:case 8388608:case 16777216:case 33554432:case 67108864:i=32;break;case 536870912:i=268435456;break;default:i=0}i=i&(r.suspendedLanes|l)?0:i,i!==0&&i!==o.retryLane&&(o.retryLane=i,Lt(e,i),vt(r,e,i,-1))}return Ns(),r=Cl(Error(E(421))),Ci(e,t,l,r)}return i.data==="$?"?(t.flags|=128,t.child=e.child,t=w0.bind(null,e),i._reactRetry=t,null):(e=o.treeContext,Ze=Gt(i.nextSibling),qe=t,fe=!0,mt=null,e!==null&&(ot[lt++]=Rt,ot[lt++]=Pt,ot[lt++]=yn,Rt=e.id,Pt=e.overflow,yn=t),t=As(t,r.children),t.flags|=4096,t)}function Bu(e,t,n){e.lanes|=t;var r=e.alternate;r!==null&&(r.lanes|=t),da(e.return,t,n)}function El(e,t,n,r,i){var o=e.memoizedState;o===null?e.memoizedState={isBackwards:t,rendering:null,renderingStartTime:0,last:r,tail:n,tailMode:i}:(o.isBackwards=t,o.rendering=null,o.renderingStartTime=0,o.last=r,o.tail=n,o.tailMode=i)}function ud(e,t,n){var r=t.pendingProps,i=r.revealOrder,o=r.tail;if(je(e,t,r.children,n),r=pe.current,r&2)r=r&1|2,t.flags|=128;else{if(e!==null&&e.flags&128)e:for(e=t.child;e!==null;){if(e.tag===13)e.memoizedState!==null&&Bu(e,n,t);else if(e.tag===19)Bu(e,n,t);else if(e.child!==null){e.child.return=e,e=e.child;continue}if(e===t)break e;for(;e.sibling===null;){if(e.return===null||e.return===t)break e;e=e.return}e.sibling.return=e.return,e=e.sibling}r&=1}if(le(pe,r),!(t.mode&1))t.memoizedState=null;else switch(i){case"forwards":for(n=t.child,i=null;n!==null;)e=n.alternate,e!==null&&so(e)===null&&(i=n),n=n.sibling;n=i,n===null?(i=t.child,t.child=null):(i=n.sibling,n.sibling=null),El(t,!1,i,n,o);break;case"backwards":for(n=null,i=t.child,t.child=null;i!==null;){if(e=i.alternate,e!==null&&so(e)===null){t.child=i;break}e=i.sibling,i.sibling=n,n=i,i=e}El(t,!0,n,null,o);break;case"together":El(t,!1,null,null,void 0);break;default:t.memoizedState=null}return t.child}function Fi(e,t){!(t.mode&1)&&e!==null&&(e.alternate=null,t.alternate=null,t.flags|=2)}function Ot(e,t,n){if(e!==null&&(t.dependencies=e.dependencies),An|=t.lanes,!(n&t.childLanes))return null;if(e!==null&&t.child!==e.child)throw Error(E(153));if(t.child!==null){for(e=t.child,n=Zt(e,e.pendingProps),t.child=n,n.return=t;e.sibling!==null;)e=e.sibling,n=n.sibling=Zt(e,e.pendingProps),n.return=t;n.sibling=null}return t.child}function a0(e,t,n){switch(t.tag){case 3:ad(t),Zn();break;case 5:bf(t);break;case 1:Ke(t.type)&&no(t);break;case 4:ds(t,t.stateNode.containerInfo);break;case 10:var r=t.type._context,i=t.memoizedProps.value;le(oo,r._currentValue),r._currentValue=i;break;case 13:if(r=t.memoizedState,r!==null)return r.dehydrated!==null?(le(pe,pe.current&1),t.flags|=128,null):n&t.child.childLanes?sd(e,t,n):(le(pe,pe.current&1),e=Ot(e,t,n),e!==null?e.sibling:null);le(pe,pe.current&1);break;case 19:if(r=(n&t.childLanes)!==0,e.flags&128){if(r)return ud(e,t,n);t.flags|=128}if(i=t.memoizedState,i!==null&&(i.rendering=null,i.tail=null,i.lastEffect=null),le(pe,pe.current),r)break;return null;case 22:case 23:return t.lanes=0,od(e,t,n)}return Ot(e,t,n)}var cd,Aa,fd,dd;cd=function(e,t){for(var n=t.child;n!==null;){if(n.tag===5||n.tag===6)e.appendChild(n.stateNode);else if(n.tag!==4&&n.child!==null){n.child.return=n,n=n.child;continue}if(n===t)break;for(;n.sibling===null;){if(n.return===null||n.return===t)return;n=n.return}n.sibling.return=n.return,n=n.sibling}};Aa=function(){};fd=function(e,t,n,r){var i=e.memoizedProps;if(i!==r){e=t.stateNode,hn(Ct.current);var o=null;switch(n){case"input":i=Bl(e,i),r=Bl(e,r),o=[];break;case"select":i=me({},i,{value:void 0}),r=me({},r,{value:void 0}),o=[];break;case"textarea":i=Wl(e,i),r=Wl(e,r),o=[];break;default:typeof i.onClick!="function"&&typeof r.onClick=="function"&&(e.onclick=eo)}Kl(n,r);var l;n=null;for(u in i)if(!r.hasOwnProperty(u)&&i.hasOwnProperty(u)&&i[u]!=null)if(u==="style"){var a=i[u];for(l in a)a.hasOwnProperty(l)&&(n||(n={}),n[l]="")}else u!=="dangerouslySetInnerHTML"&&u!=="children"&&u!=="suppressContentEditableWarning"&&u!=="suppressHydrationWarning"&&u!=="autoFocus"&&(Mr.hasOwnProperty(u)?o||(o=[]):(o=o||[]).push(u,null));for(u in r){var s=r[u];if(a=i!=null?i[u]:void 0,r.hasOwnProperty(u)&&s!==a&&(s!=null||a!=null))if(u==="style")if(a){for(l in a)!a.hasOwnProperty(l)||s&&s.hasOwnProperty(l)||(n||(n={}),n[l]="");for(l in s)s.hasOwnProperty(l)&&a[l]!==s[l]&&(n||(n={}),n[l]=s[l])}else n||(o||(o=[]),o.push(u,n)),n=s;else u==="dangerouslySetInnerHTML"?(s=s?s.__html:void 0,a=a?a.__html:void 0,s!=null&&a!==s&&(o=o||[]).push(u,s)):u==="children"?typeof s!="string"&&typeof s!="number"||(o=o||[]).push(u,""+s):u!=="suppressContentEditableWarning"&&u!=="suppressHydrationWarning"&&(Mr.hasOwnProperty(u)?(s!=null&&u==="onScroll"&&se("scroll",e),o||a===s||(o=[])):(o=o||[]).push(u,s))}n&&(o=o||[]).push("style",n);var u=o;(t.updateQueue=u)&&(t.flags|=4)}};dd=function(e,t,n,r){n!==r&&(t.flags|=4)};function gr(e,t){if(!fe)switch(e.tailMode){case"hidden":t=e.tail;for(var n=null;t!==null;)t.alternate!==null&&(n=t),t=t.sibling;n===null?e.tail=null:n.sibling=null;break;case"collapsed":n=e.tail;for(var r=null;n!==null;)n.alternate!==null&&(r=n),n=n.sibling;r===null?t||e.tail===null?e.tail=null:e.tail.sibling=null:r.sibling=null}}function Me(e){var t=e.alternate!==null&&e.alternate.child===e.child,n=0,r=0;if(t)for(var i=e.child;i!==null;)n|=i.lanes|i.childLanes,r|=i.subtreeFlags&14680064,r|=i.flags&14680064,i.return=e,i=i.sibling;else for(i=e.child;i!==null;)n|=i.lanes|i.childLanes,r|=i.subtreeFlags,r|=i.flags,i.return=e,i=i.sibling;return e.subtreeFlags|=r,e.childLanes=n,t}function s0(e,t,n){var r=t.pendingProps;switch(os(t),t.tag){case 2:case 16:case 15:case 0:case 11:case 7:case 8:case 12:case 9:case 14:return Me(t),null;case 1:return Ke(t.type)&&to(),Me(t),null;case 3:return r=t.stateNode,er(),ue(Qe),ue(Ue),hs(),r.pendingContext&&(r.context=r.pendingContext,r.pendingContext=null),(e===null||e.child===null)&&(xi(t)?t.flags|=4:e===null||e.memoizedState.isDehydrated&&!(t.flags&256)||(t.flags|=1024,mt!==null&&(Pa(mt),mt=null))),Aa(e,t),Me(t),null;case 5:ps(t);var i=hn(Kr.current);if(n=t.type,e!==null&&t.stateNode!=null)fd(e,t,n,r,i),e.ref!==t.ref&&(t.flags|=512,t.flags|=2097152);else{if(!r){if(t.stateNode===null)throw Error(E(166));return Me(t),null}if(e=hn(Ct.current),xi(t)){r=t.stateNode,n=t.type;var o=t.memoizedProps;switch(r[kt]=t,r[Wr]=o,e=(t.mode&1)!==0,n){case"dialog":se("cancel",r),se("close",r);break;case"iframe":case"object":case"embed":se("load",r);break;case"video":case"audio":for(i=0;i<kr.length;i++)se(kr[i],r);break;case"source":se("error",r);break;case"img":case"image":case"link":se("error",r),se("load",r);break;case"details":se("toggle",r);break;case"input":Js(r,o),se("invalid",r);break;case"select":r._wrapperState={wasMultiple:!!o.multiple},se("invalid",r);break;case"textarea":qs(r,o),se("invalid",r)}Kl(n,o),i=null;for(var l in o)if(o.hasOwnProperty(l)){var a=o[l];l==="children"?typeof a=="string"?r.textContent!==a&&(o.suppressHydrationWarning!==!0&&ki(r.textContent,a,e),i=["children",a]):typeof a=="number"&&r.textContent!==""+a&&(o.suppressHydrationWarning!==!0&&ki(r.textContent,a,e),i=["children",""+a]):Mr.hasOwnProperty(l)&&a!=null&&l==="onScroll"&&se("scroll",r)}switch(n){case"input":pi(r),Zs(r,o,!0);break;case"textarea":pi(r),eu(r);break;case"select":case"option":break;default:typeof o.onClick=="function"&&(r.onclick=eo)}r=i,t.updateQueue=r,r!==null&&(t.flags|=4)}else{l=i.nodeType===9?i:i.ownerDocument,e==="http://www.w3.org/1999/xhtml"&&(e=jc(n)),e==="http://www.w3.org/1999/xhtml"?n==="script"?(e=l.createElement("div"),e.innerHTML="<script><\/script>",e=e.removeChild(e.firstChild)):typeof r.is=="string"?e=l.createElement(n,{is:r.is}):(e=l.createElement(n),n==="select"&&(l=e,r.multiple?l.multiple=!0:r.size&&(l.size=r.size))):e=l.createElementNS(e,n),e[kt]=t,e[Wr]=r,cd(e,t,!1,!1),t.stateNode=e;e:{switch(l=Gl(n,r),n){case"dialog":se("cancel",e),se("close",e),i=r;break;case"iframe":case"object":case"embed":se("load",e),i=r;break;case"video":case"audio":for(i=0;i<kr.length;i++)se(kr[i],e);i=r;break;case"source":se("error",e),i=r;break;case"img":case"image":case"link":se("error",e),se("load",e),i=r;break;case"details":se("toggle",e),i=r;break;case"input":Js(e,r),i=Bl(e,r),se("invalid",e);break;case"option":i=r;break;case"select":e._wrapperState={wasMultiple:!!r.multiple},i=me({},r,{value:void 0}),se("invalid",e);break;case"textarea":qs(e,r),i=Wl(e,r),se("invalid",e);break;default:i=r}Kl(n,i),a=i;for(o in a)if(a.hasOwnProperty(o)){var s=a[o];o==="style"?$c(e,s):o==="dangerouslySetInnerHTML"?(s=s?s.__html:void 0,s!=null&&Dc(e,s)):o==="children"?typeof s=="string"?(n!=="textarea"||s!=="")&&br(e,s):typeof s=="number"&&br(e,""+s):o!=="suppressContentEditableWarning"&&o!=="suppressHydrationWarning"&&o!=="autoFocus"&&(Mr.hasOwnProperty(o)?s!=null&&o==="onScroll"&&se("scroll",e):s!=null&&Va(e,o,s,l))}switch(n){case"input":pi(e),Zs(e,r,!1);break;case"textarea":pi(e),eu(e);break;case"option":r.value!=null&&e.setAttribute("value",""+nn(r.value));break;case"select":e.multiple=!!r.multiple,o=r.value,o!=null?Vn(e,!!r.multiple,o,!1):r.defaultValue!=null&&Vn(e,!!r.multiple,r.defaultValue,!0);break;default:typeof i.onClick=="function"&&(e.onclick=eo)}switch(n){case"button":case"input":case"select":case"textarea":r=!!r.autoFocus;break e;case"img":r=!0;break e;default:r=!1}}r&&(t.flags|=4)}t.ref!==null&&(t.flags|=512,t.flags|=2097152)}return Me(t),null;case 6:if(e&&t.stateNode!=null)dd(e,t,e.memoizedProps,r);else{if(typeof r!="string"&&t.stateNode===null)throw Error(E(166));if(n=hn(Kr.current),hn(Ct.current),xi(t)){if(r=t.stateNode,n=t.memoizedProps,r[kt]=t,(o=r.nodeValue!==n)&&(e=qe,e!==null))switch(e.tag){case 3:ki(r.nodeValue,n,(e.mode&1)!==0);break;case 5:e.memoizedProps.suppressHydrationWarning!==!0&&ki(r.nodeValue,n,(e.mode&1)!==0)}o&&(t.flags|=4)}else r=(n.nodeType===9?n:n.ownerDocument).createTextNode(r),r[kt]=t,t.stateNode=r}return Me(t),null;case 13:if(ue(pe),r=t.memoizedState,e===null||e.memoizedState!==null&&e.memoizedState.dehydrated!==null){if(fe&&Ze!==null&&t.mode&1&&!(t.flags&128))Tf(),Zn(),t.flags|=98560,o=!1;else if(o=xi(t),r!==null&&r.dehydrated!==null){if(e===null){if(!o)throw Error(E(318));if(o=t.memoizedState,o=o!==null?o.dehydrated:null,!o)throw Error(E(317));o[kt]=t}else Zn(),!(t.flags&128)&&(t.memoizedState=null),t.flags|=4;Me(t),o=!1}else mt!==null&&(Pa(mt),mt=null),o=!0;if(!o)return t.flags&65536?t:null}return t.flags&128?(t.lanes=n,t):(r=r!==null,r!==(e!==null&&e.memoizedState!==null)&&r&&(t.child.flags|=8192,t.mode&1&&(e===null||pe.current&1?Se===0&&(Se=3):Ns())),t.updateQueue!==null&&(t.flags|=4),Me(t),null);case 4:return er(),Aa(e,t),e===null&&Hr(t.stateNode.containerInfo),Me(t),null;case 10:return us(t.type._context),Me(t),null;case 17:return Ke(t.type)&&to(),Me(t),null;case 19:if(ue(pe),o=t.memoizedState,o===null)return Me(t),null;if(r=(t.flags&128)!==0,l=o.rendering,l===null)if(r)gr(o,!1);else{if(Se!==0||e!==null&&e.flags&128)for(e=t.child;e!==null;){if(l=so(e),l!==null){for(t.flags|=128,gr(o,!1),r=l.updateQueue,r!==null&&(t.updateQueue=r,t.flags|=4),t.subtreeFlags=0,r=n,n=t.child;n!==null;)o=n,e=r,o.flags&=14680066,l=o.alternate,l===null?(o.childLanes=0,o.lanes=e,o.child=null,o.subtreeFlags=0,o.memoizedProps=null,o.memoizedState=null,o.updateQueue=null,o.dependencies=null,o.stateNode=null):(o.childLanes=l.childLanes,o.lanes=l.lanes,o.child=l.child,o.subtreeFlags=0,o.deletions=null,o.memoizedProps=l.memoizedProps,o.memoizedState=l.memoizedState,o.updateQueue=l.updateQueue,o.type=l.type,e=l.dependencies,o.dependencies=e===null?null:{lanes:e.lanes,firstContext:e.firstContext}),n=n.sibling;return le(pe,pe.current&1|2),t.child}e=e.sibling}o.tail!==null&&we()>nr&&(t.flags|=128,r=!0,gr(o,!1),t.lanes=4194304)}else{if(!r)if(e=so(l),e!==null){if(t.flags|=128,r=!0,n=e.updateQueue,n!==null&&(t.updateQueue=n,t.flags|=4),gr(o,!0),o.tail===null&&o.tailMode==="hidden"&&!l.alternate&&!fe)return Me(t),null}else 2*we()-o.renderingStartTime>nr&&n!==1073741824&&(t.flags|=128,r=!0,gr(o,!1),t.lanes=4194304);o.isBackwards?(l.sibling=t.child,t.child=l):(n=o.last,n!==null?n.sibling=l:t.child=l,o.last=l)}return o.tail!==null?(t=o.tail,o.rendering=t,o.tail=t.sibling,o.renderingStartTime=we(),t.sibling=null,n=pe.current,le(pe,r?n&1|2:n&1),t):(Me(t),null);case 22:case 23:return Es(),r=t.memoizedState!==null,e!==null&&e.memoizedState!==null!==r&&(t.flags|=8192),r&&t.mode&1?Je&1073741824&&(Me(t),t.subtreeFlags&6&&(t.flags|=8192)):Me(t),null;case 24:return null;case 25:return null}throw Error(E(156,t.tag))}function u0(e,t){switch(os(t),t.tag){case 1:return Ke(t.type)&&to(),e=t.flags,e&65536?(t.flags=e&-65537|128,t):null;case 3:return er(),ue(Qe),ue(Ue),hs(),e=t.flags,e&65536&&!(e&128)?(t.flags=e&-65537|128,t):null;case 5:return ps(t),null;case 13:if(ue(pe),e=t.memoizedState,e!==null&&e.dehydrated!==null){if(t.alternate===null)throw Error(E(340));Zn()}return e=t.flags,e&65536?(t.flags=e&-65537|128,t):null;case 19:return ue(pe),null;case 4:return er(),null;case 10:return us(t.type._context),null;case 22:case 23:return Es(),null;case 24:return null;default:return null}}var Ei=!1,be=!1,c0=typeof WeakSet=="function"?WeakSet:Set,M=null;function $n(e,t){var n=e.ref;if(n!==null)if(typeof n=="function")try{n(null)}catch(r){ve(e,t,r)}else n.current=null}function ka(e,t,n){try{n()}catch(r){ve(e,t,r)}}var Hu=!1;function f0(e,t){if(ia=Ji,e=gf(),rs(e)){if("selectionStart"in e)var n={start:e.selectionStart,end:e.selectionEnd};else e:{n=(n=e.ownerDocument)&&n.defaultView||window;var r=n.getSelection&&n.getSelection();if(r&&r.rangeCount!==0){n=r.anchorNode;var i=r.anchorOffset,o=r.focusNode;r=r.focusOffset;try{n.nodeType,o.nodeType}catch{n=null;break e}var l=0,a=-1,s=-1,u=0,f=0,p=e,h=null;t:for(;;){for(var g;p!==n||i!==0&&p.nodeType!==3||(a=l+i),p!==o||r!==0&&p.nodeType!==3||(s=l+r),p.nodeType===3&&(l+=p.nodeValue.length),(g=p.firstChild)!==null;)h=p,p=g;for(;;){if(p===e)break t;if(h===n&&++u===i&&(a=l),h===o&&++f===r&&(s=l),(g=p.nextSibling)!==null)break;p=h,h=p.parentNode}p=g}n=a===-1||s===-1?null:{start:a,end:s}}else n=null}n=n||{start:0,end:0}}else n=null;for(oa={focusedElem:e,selectionRange:n},Ji=!1,M=t;M!==null;)if(t=M,e=t.child,(t.subtreeFlags&1028)!==0&&e!==null)e.return=t,M=e;else for(;M!==null;){t=M;try{var v=t.alternate;if(t.flags&1024)switch(t.tag){case 0:case 11:case 15:break;case 1:if(v!==null){var y=v.memoizedProps,x=v.memoizedState,d=t.stateNode,c=d.getSnapshotBeforeUpdate(t.elementType===t.type?y:pt(t.type,y),x);d.__reactInternalSnapshotBeforeUpdate=c}break;case 3:var m=t.stateNode.containerInfo;m.nodeType===1?m.textContent="":m.nodeType===9&&m.documentElement&&m.removeChild(m.documentElement);break;case 5:case 6:case 4:case 17:break;default:throw Error(E(163))}}catch(w){ve(t,t.return,w)}if(e=t.sibling,e!==null){e.return=t.return,M=e;break}M=t.return}return v=Hu,Hu=!1,v}function Tr(e,t,n){var r=t.updateQueue;if(r=r!==null?r.lastEffect:null,r!==null){var i=r=r.next;do{if((i.tag&e)===e){var o=i.destroy;i.destroy=void 0,o!==void 0&&ka(t,n,o)}i=i.next}while(i!==r)}}function Lo(e,t){if(t=t.updateQueue,t=t!==null?t.lastEffect:null,t!==null){var n=t=t.next;do{if((n.tag&e)===e){var r=n.create;n.destroy=r()}n=n.next}while(n!==t)}}function xa(e){var t=e.ref;if(t!==null){var n=e.stateNode;switch(e.tag){case 5:e=n;break;default:e=n}typeof t=="function"?t(e):t.current=e}}function pd(e){var t=e.alternate;t!==null&&(e.alternate=null,pd(t)),e.child=null,e.deletions=null,e.sibling=null,e.tag===5&&(t=e.stateNode,t!==null&&(delete t[kt],delete t[Wr],delete t[sa],delete t[Kh],delete t[Gh])),e.stateNode=null,e.return=null,e.dependencies=null,e.memoizedProps=null,e.memoizedState=null,e.pendingProps=null,e.stateNode=null,e.updateQueue=null}function hd(e){return e.tag===5||e.tag===3||e.tag===4}function Vu(e){e:for(;;){for(;e.sibling===null;){if(e.return===null||hd(e.return))return null;e=e.return}for(e.sibling.return=e.return,e=e.sibling;e.tag!==5&&e.tag!==6&&e.tag!==18;){if(e.flags&2||e.child===null||e.tag===4)continue e;e.child.return=e,e=e.child}if(!(e.flags&2))return e.stateNode}}function Sa(e,t,n){var r=e.tag;if(r===5||r===6)e=e.stateNode,t?n.nodeType===8?n.parentNode.insertBefore(e,t):n.insertBefore(e,t):(n.nodeType===8?(t=n.parentNode,t.insertBefore(e,n)):(t=n,t.appendChild(e)),n=n._reactRootContainer,n!=null||t.onclick!==null||(t.onclick=eo));else if(r!==4&&(e=e.child,e!==null))for(Sa(e,t,n),e=e.sibling;e!==null;)Sa(e,t,n),e=e.sibling}function Ca(e,t,n){var r=e.tag;if(r===5||r===6)e=e.stateNode,t?n.insertBefore(e,t):n.appendChild(e);else if(r!==4&&(e=e.child,e!==null))for(Ca(e,t,n),e=e.sibling;e!==null;)Ca(e,t,n),e=e.sibling}var Ie=null,ht=!1;function bt(e,t,n){for(n=n.child;n!==null;)md(e,t,n),n=n.sibling}function md(e,t,n){if(St&&typeof St.onCommitFiberUnmount=="function")try{St.onCommitFiberUnmount(Co,n)}catch{}switch(n.tag){case 5:be||$n(n,t);case 6:var r=Ie,i=ht;Ie=null,bt(e,t,n),Ie=r,ht=i,Ie!==null&&(ht?(e=Ie,n=n.stateNode,e.nodeType===8?e.parentNode.removeChild(n):e.removeChild(n)):Ie.removeChild(n.stateNode));break;case 18:Ie!==null&&(ht?(e=Ie,n=n.stateNode,e.nodeType===8?yl(e.parentNode,n):e.nodeType===1&&yl(e,n),Fr(e)):yl(Ie,n.stateNode));break;case 4:r=Ie,i=ht,Ie=n.stateNode.containerInfo,ht=!0,bt(e,t,n),Ie=r,ht=i;break;case 0:case 11:case 14:case 15:if(!be&&(r=n.updateQueue,r!==null&&(r=r.lastEffect,r!==null))){i=r=r.next;do{var o=i,l=o.destroy;o=o.tag,l!==void 0&&(o&2||o&4)&&ka(n,t,l),i=i.next}while(i!==r)}bt(e,t,n);break;case 1:if(!be&&($n(n,t),r=n.stateNode,typeof r.componentWillUnmount=="function"))try{r.props=n.memoizedProps,r.state=n.memoizedState,r.componentWillUnmount()}catch(a){ve(n,t,a)}bt(e,t,n);break;case 21:bt(e,t,n);break;case 22:n.mode&1?(be=(r=be)||n.memoizedState!==null,bt(e,t,n),be=r):bt(e,t,n);break;default:bt(e,t,n)}}function Wu(e){var t=e.updateQueue;if(t!==null){e.updateQueue=null;var n=e.stateNode;n===null&&(n=e.stateNode=new c0),t.forEach(function(r){var i=A0.bind(null,e,r);n.has(r)||(n.add(r),r.then(i,i))})}}function dt(e,t){var n=t.deletions;if(n!==null)for(var r=0;r<n.length;r++){var i=n[r];try{var o=e,l=t,a=l;e:for(;a!==null;){switch(a.tag){case 5:Ie=a.stateNode,ht=!1;break e;case 3:Ie=a.stateNode.containerInfo,ht=!0;break e;case 4:Ie=a.stateNode.containerInfo,ht=!0;break e}a=a.return}if(Ie===null)throw Error(E(160));md(o,l,i),Ie=null,ht=!1;var s=i.alternate;s!==null&&(s.return=null),i.return=null}catch(u){ve(i,t,u)}}if(t.subtreeFlags&12854)for(t=t.child;t!==null;)gd(t,e),t=t.sibling}function gd(e,t){var n=e.alternate,r=e.flags;switch(e.tag){case 0:case 11:case 14:case 15:if(dt(t,e),wt(e),r&4){try{Tr(3,e,e.return),Lo(3,e)}catch(y){ve(e,e.return,y)}try{Tr(5,e,e.return)}catch(y){ve(e,e.return,y)}}break;case 1:dt(t,e),wt(e),r&512&&n!==null&&$n(n,n.return);break;case 5:if(dt(t,e),wt(e),r&512&&n!==null&&$n(n,n.return),e.flags&32){var i=e.stateNode;try{br(i,"")}catch(y){ve(e,e.return,y)}}if(r&4&&(i=e.stateNode,i!=null)){var o=e.memoizedProps,l=n!==null?n.memoizedProps:o,a=e.type,s=e.updateQueue;if(e.updateQueue=null,s!==null)try{a==="input"&&o.type==="radio"&&o.name!=null&&bc(i,o),Gl(a,l);var u=Gl(a,o);for(l=0;l<s.length;l+=2){var f=s[l],p=s[l+1];f==="style"?$c(i,p):f==="dangerouslySetInnerHTML"?Dc(i,p):f==="children"?br(i,p):Va(i,f,p,u)}switch(a){case"input":Hl(i,o);break;case"textarea":Uc(i,o);break;case"select":var h=i._wrapperState.wasMultiple;i._wrapperState.wasMultiple=!!o.multiple;var g=o.value;g!=null?Vn(i,!!o.multiple,g,!1):h!==!!o.multiple&&(o.defaultValue!=null?Vn(i,!!o.multiple,o.defaultValue,!0):Vn(i,!!o.multiple,o.multiple?[]:"",!1))}i[Wr]=o}catch(y){ve(e,e.return,y)}}break;case 6:if(dt(t,e),wt(e),r&4){if(e.stateNode===null)throw Error(E(162));i=e.stateNode,o=e.memoizedProps;try{i.nodeValue=o}catch(y){ve(e,e.return,y)}}break;case 3:if(dt(t,e),wt(e),r&4&&n!==null&&n.memoizedState.isDehydrated)try{Fr(t.containerInfo)}catch(y){ve(e,e.return,y)}break;case 4:dt(t,e),wt(e);break;case 13:dt(t,e),wt(e),i=e.child,i.flags&8192&&(o=i.memoizedState!==null,i.stateNode.isHidden=o,!o||i.alternate!==null&&i.alternate.memoizedState!==null||(Ss=we())),r&4&&Wu(e);break;case 22:if(f=n!==null&&n.memoizedState!==null,e.mode&1?(be=(u=be)||f,dt(t,e),be=u):dt(t,e),wt(e),r&8192){if(u=e.memoizedState!==null,(e.stateNode.isHidden=u)&&!f&&e.mode&1)for(M=e,f=e.child;f!==null;){for(p=M=f;M!==null;){switch(h=M,g=h.child,h.tag){case 0:case 11:case 14:case 15:Tr(4,h,h.return);break;case 1:$n(h,h.return);var v=h.stateNode;if(typeof v.componentWillUnmount=="function"){r=h,n=h.return;try{t=r,v.props=t.memoizedProps,v.state=t.memoizedState,v.componentWillUnmount()}catch(y){ve(r,n,y)}}break;case 5:$n(h,h.return);break;case 22:if(h.memoizedState!==null){Ku(p);continue}}g!==null?(g.return=h,M=g):Ku(p)}f=f.sibling}e:for(f=null,p=e;;){if(p.tag===5){if(f===null){f=p;try{i=p.stateNode,u?(o=i.style,typeof o.setProperty=="function"?o.setProperty("display","none","important"):o.display="none"):(a=p.stateNode,s=p.memoizedProps.style,l=s!=null&&s.hasOwnProperty("display")?s.display:null,a.style.display=Fc("display",l))}catch(y){ve(e,e.return,y)}}}else if(p.tag===6){if(f===null)try{p.stateNode.nodeValue=u?"":p.memoizedProps}catch(y){ve(e,e.return,y)}}else if((p.tag!==22&&p.tag!==23||p.memoizedState===null||p===e)&&p.child!==null){p.child.return=p,p=p.child;continue}if(p===e)break e;for(;p.sibling===null;){if(p.return===null||p.return===e)break e;f===p&&(f=null),p=p.return}f===p&&(f=null),p.sibling.return=p.return,p=p.sibling}}break;case 19:dt(t,e),wt(e),r&4&&Wu(e);break;case 21:break;default:dt(t,e),wt(e)}}function wt(e){var t=e.flags;if(t&2){try{e:{for(var n=e.return;n!==null;){if(hd(n)){var r=n;break e}n=n.return}throw Error(E(160))}switch(r.tag){case 5:var i=r.stateNode;r.flags&32&&(br(i,""),r.flags&=-33);var o=Vu(e);Ca(e,o,i);break;case 3:case 4:var l=r.stateNode.containerInfo,a=Vu(e);Sa(e,a,l);break;default:throw Error(E(161))}}catch(s){ve(e,e.return,s)}e.flags&=-3}t&4096&&(e.flags&=-4097)}function d0(e,t,n){M=e,vd(e)}function vd(e,t,n){for(var r=(e.mode&1)!==0;M!==null;){var i=M,o=i.child;if(i.tag===22&&r){var l=i.memoizedState!==null||Ei;if(!l){var a=i.alternate,s=a!==null&&a.memoizedState!==null||be;a=Ei;var u=be;if(Ei=l,(be=s)&&!u)for(M=i;M!==null;)l=M,s=l.child,l.tag===22&&l.memoizedState!==null?Gu(i):s!==null?(s.return=l,M=s):Gu(i);for(;o!==null;)M=o,vd(o),o=o.sibling;M=i,Ei=a,be=u}Qu(e)}else i.subtreeFlags&8772&&o!==null?(o.return=i,M=o):Qu(e)}}function Qu(e){for(;M!==null;){var t=M;if(t.flags&8772){var n=t.alternate;try{if(t.flags&8772)switch(t.tag){case 0:case 11:case 15:be||Lo(5,t);break;case 1:var r=t.stateNode;if(t.flags&4&&!be)if(n===null)r.componentDidMount();else{var i=t.elementType===t.type?n.memoizedProps:pt(t.type,n.memoizedProps);r.componentDidUpdate(i,n.memoizedState,r.__reactInternalSnapshotBeforeUpdate)}var o=t.updateQueue;o!==null&&Tu(t,o,r);break;case 3:var l=t.updateQueue;if(l!==null){if(n=null,t.child!==null)switch(t.child.tag){case 5:n=t.child.stateNode;break;case 1:n=t.child.stateNode}Tu(t,l,n)}break;case 5:var a=t.stateNode;if(n===null&&t.flags&4){n=a;var s=t.memoizedProps;switch(t.type){case"button":case"input":case"select":case"textarea":s.autoFocus&&n.focus();break;case"img":s.src&&(n.src=s.src)}}break;case 6:break;case 4:break;case 12:break;case 13:if(t.memoizedState===null){var u=t.alternate;if(u!==null){var f=u.memoizedState;if(f!==null){var p=f.dehydrated;p!==null&&Fr(p)}}}break;case 19:case 17:case 21:case 22:case 23:case 25:break;default:throw Error(E(163))}be||t.flags&512&&xa(t)}catch(h){ve(t,t.return,h)}}if(t===e){M=null;break}if(n=t.sibling,n!==null){n.return=t.return,M=n;break}M=t.return}}function Ku(e){for(;M!==null;){var t=M;if(t===e){M=null;break}var n=t.sibling;if(n!==null){n.return=t.return,M=n;break}M=t.return}}function Gu(e){for(;M!==null;){var t=M;try{switch(t.tag){case 0:case 11:case 15:var n=t.return;try{Lo(4,t)}catch(s){ve(t,n,s)}break;case 1:var r=t.stateNode;if(typeof r.componentDidMount=="function"){var i=t.return;try{r.componentDidMount()}catch(s){ve(t,i,s)}}var o=t.return;try{xa(t)}catch(s){ve(t,o,s)}break;case 5:var l=t.return;try{xa(t)}catch(s){ve(t,l,s)}}}catch(s){ve(t,t.return,s)}if(t===e){M=null;break}var a=t.sibling;if(a!==null){a.return=t.return,M=a;break}M=t.return}}var p0=Math.ceil,fo=_t.ReactCurrentDispatcher,ks=_t.ReactCurrentOwner,st=_t.ReactCurrentBatchConfig,W=0,Ee=null,Ae=null,ze=0,Je=0,Bn=ln(0),Se=0,Jr=null,An=0,Oo=0,xs=0,Ir=null,He=null,Ss=0,nr=1/0,Et=null,po=!1,Ea=null,Xt=null,Ni=!1,Bt=null,ho=0,zr=0,Na=null,$i=-1,Bi=0;function De(){return W&6?we():$i!==-1?$i:$i=we()}function Jt(e){return e.mode&1?W&2&&ze!==0?ze&-ze:Xh.transition!==null?(Bi===0&&(Bi=qc()),Bi):(e=q,e!==0||(e=window.event,e=e===void 0?16:af(e.type)),e):1}function vt(e,t,n,r){if(50<zr)throw zr=0,Na=null,Error(E(185));ri(e,n,r),(!(W&2)||e!==Ee)&&(e===Ee&&(!(W&2)&&(Oo|=n),Se===4&&Ft(e,ze)),Ge(e,r),n===1&&W===0&&!(t.mode&1)&&(nr=we()+500,To&&an()))}function Ge(e,t){var n=e.callbackNode;Xp(e,t);var r=Xi(e,e===Ee?ze:0);if(r===0)n!==null&&ru(n),e.callbackNode=null,e.callbackPriority=0;else if(t=r&-r,e.callbackPriority!==t){if(n!=null&&ru(n),t===1)e.tag===0?Yh(Yu.bind(null,e)):Nf(Yu.bind(null,e)),Wh(function(){!(W&6)&&an()}),n=null;else{switch(ef(r)){case 1:n=Ya;break;case 4:n=Jc;break;case 16:n=Yi;break;case 536870912:n=Zc;break;default:n=Yi}n=Ed(n,yd.bind(null,e))}e.callbackPriority=t,e.callbackNode=n}}function yd(e,t){if($i=-1,Bi=0,W&6)throw Error(E(327));var n=e.callbackNode;if(Yn()&&e.callbackNode!==n)return null;var r=Xi(e,e===Ee?ze:0);if(r===0)return null;if(r&30||r&e.expiredLanes||t)t=mo(e,r);else{t=r;var i=W;W|=2;var o=Ad();(Ee!==e||ze!==t)&&(Et=null,nr=we()+500,mn(e,t));do try{g0();break}catch(a){wd(e,a)}while(1);ss(),fo.current=o,W=i,Ae!==null?t=0:(Ee=null,ze=0,t=Se)}if(t!==0){if(t===2&&(i=ql(e),i!==0&&(r=i,t=Ra(e,i))),t===1)throw n=Jr,mn(e,0),Ft(e,r),Ge(e,we()),n;if(t===6)Ft(e,r);else{if(i=e.current.alternate,!(r&30)&&!h0(i)&&(t=mo(e,r),t===2&&(o=ql(e),o!==0&&(r=o,t=Ra(e,o))),t===1))throw n=Jr,mn(e,0),Ft(e,r),Ge(e,we()),n;switch(e.finishedWork=i,e.finishedLanes=r,t){case 0:case 1:throw Error(E(345));case 2:un(e,He,Et);break;case 3:if(Ft(e,r),(r&130023424)===r&&(t=Ss+500-we(),10<t)){if(Xi(e,0)!==0)break;if(i=e.suspendedLanes,(i&r)!==r){De(),e.pingedLanes|=e.suspendedLanes&i;break}e.timeoutHandle=aa(un.bind(null,e,He,Et),t);break}un(e,He,Et);break;case 4:if(Ft(e,r),(r&4194240)===r)break;for(t=e.eventTimes,i=-1;0<r;){var l=31-gt(r);o=1<<l,l=t[l],l>i&&(i=l),r&=~o}if(r=i,r=we()-r,r=(120>r?120:480>r?480:1080>r?1080:1920>r?1920:3e3>r?3e3:4320>r?4320:1960*p0(r/1960))-r,10<r){e.timeoutHandle=aa(un.bind(null,e,He,Et),r);break}un(e,He,Et);break;case 5:un(e,He,Et);break;default:throw Error(E(329))}}}return Ge(e,we()),e.callbackNode===n?yd.bind(null,e):null}function Ra(e,t){var n=Ir;return e.current.memoizedState.isDehydrated&&(mn(e,t).flags|=256),e=mo(e,t),e!==2&&(t=He,He=n,t!==null&&Pa(t)),e}function Pa(e){He===null?He=e:He.push.apply(He,e)}function h0(e){for(var t=e;;){if(t.flags&16384){var n=t.updateQueue;if(n!==null&&(n=n.stores,n!==null))for(var r=0;r<n.length;r++){var i=n[r],o=i.getSnapshot;i=i.value;try{if(!yt(o(),i))return!1}catch{return!1}}}if(n=t.child,t.subtreeFlags&16384&&n!==null)n.return=t,t=n;else{if(t===e)break;for(;t.sibling===null;){if(t.return===null||t.return===e)return!0;t=t.return}t.sibling.return=t.return,t=t.sibling}}return!0}function Ft(e,t){for(t&=~xs,t&=~Oo,e.suspendedLanes|=t,e.pingedLanes&=~t,e=e.expirationTimes;0<t;){var n=31-gt(t),r=1<<n;e[n]=-1,t&=~r}}function Yu(e){if(W&6)throw Error(E(327));Yn();var t=Xi(e,0);if(!(t&1))return Ge(e,we()),null;var n=mo(e,t);if(e.tag!==0&&n===2){var r=ql(e);r!==0&&(t=r,n=Ra(e,r))}if(n===1)throw n=Jr,mn(e,0),Ft(e,t),Ge(e,we()),n;if(n===6)throw Error(E(345));return e.finishedWork=e.current.alternate,e.finishedLanes=t,un(e,He,Et),Ge(e,we()),null}function Cs(e,t){var n=W;W|=1;try{return e(t)}finally{W=n,W===0&&(nr=we()+500,To&&an())}}function kn(e){Bt!==null&&Bt.tag===0&&!(W&6)&&Yn();var t=W;W|=1;var n=st.transition,r=q;try{if(st.transition=null,q=1,e)return e()}finally{q=r,st.transition=n,W=t,!(W&6)&&an()}}function Es(){Je=Bn.current,ue(Bn)}function mn(e,t){e.finishedWork=null,e.finishedLanes=0;var n=e.timeoutHandle;if(n!==-1&&(e.timeoutHandle=-1,Vh(n)),Ae!==null)for(n=Ae.return;n!==null;){var r=n;switch(os(r),r.tag){case 1:r=r.type.childContextTypes,r!=null&&to();break;case 3:er(),ue(Qe),ue(Ue),hs();break;case 5:ps(r);break;case 4:er();break;case 13:ue(pe);break;case 19:ue(pe);break;case 10:us(r.type._context);break;case 22:case 23:Es()}n=n.return}if(Ee=e,Ae=e=Zt(e.current,null),ze=Je=t,Se=0,Jr=null,xs=Oo=An=0,He=Ir=null,pn!==null){for(t=0;t<pn.length;t++)if(n=pn[t],r=n.interleaved,r!==null){n.interleaved=null;var i=r.next,o=n.pending;if(o!==null){var l=o.next;o.next=i,r.next=l}n.pending=r}pn=null}return e}function wd(e,t){do{var n=Ae;try{if(ss(),ji.current=co,uo){for(var r=he.memoizedState;r!==null;){var i=r.queue;i!==null&&(i.pending=null),r=r.next}uo=!1}if(wn=0,Ce=xe=he=null,Pr=!1,Gr=0,ks.current=null,n===null||n.return===null){Se=1,Jr=t,Ae=null;break}e:{var o=e,l=n.return,a=n,s=t;if(t=ze,a.flags|=32768,s!==null&&typeof s=="object"&&typeof s.then=="function"){var u=s,f=a,p=f.tag;if(!(f.mode&1)&&(p===0||p===11||p===15)){var h=f.alternate;h?(f.updateQueue=h.updateQueue,f.memoizedState=h.memoizedState,f.lanes=h.lanes):(f.updateQueue=null,f.memoizedState=null)}var g=bu(l);if(g!==null){g.flags&=-257,Uu(g,l,a,o,t),g.mode&1&&Mu(o,u,t),t=g,s=u;var v=t.updateQueue;if(v===null){var y=new Set;y.add(s),t.updateQueue=y}else v.add(s);break e}else{if(!(t&1)){Mu(o,u,t),Ns();break e}s=Error(E(426))}}else if(fe&&a.mode&1){var x=bu(l);if(x!==null){!(x.flags&65536)&&(x.flags|=256),Uu(x,l,a,o,t),ls(tr(s,a));break e}}o=s=tr(s,a),Se!==4&&(Se=2),Ir===null?Ir=[o]:Ir.push(o),o=l;do{switch(o.tag){case 3:o.flags|=65536,t&=-t,o.lanes|=t;var d=nd(o,s,t);Pu(o,d);break e;case 1:a=s;var c=o.type,m=o.stateNode;if(!(o.flags&128)&&(typeof c.getDerivedStateFromError=="function"||m!==null&&typeof m.componentDidCatch=="function"&&(Xt===null||!Xt.has(m)))){o.flags|=65536,t&=-t,o.lanes|=t;var w=rd(o,a,t);Pu(o,w);break e}}o=o.return}while(o!==null)}xd(n)}catch(C){t=C,Ae===n&&n!==null&&(Ae=n=n.return);continue}break}while(1)}function Ad(){var e=fo.current;return fo.current=co,e===null?co:e}function Ns(){(Se===0||Se===3||Se===2)&&(Se=4),Ee===null||!(An&268435455)&&!(Oo&268435455)||Ft(Ee,ze)}function mo(e,t){var n=W;W|=2;var r=Ad();(Ee!==e||ze!==t)&&(Et=null,mn(e,t));do try{m0();break}catch(i){wd(e,i)}while(1);if(ss(),W=n,fo.current=r,Ae!==null)throw Error(E(261));return Ee=null,ze=0,Se}function m0(){for(;Ae!==null;)kd(Ae)}function g0(){for(;Ae!==null&&!$p();)kd(Ae)}function kd(e){var t=Cd(e.alternate,e,Je);e.memoizedProps=e.pendingProps,t===null?xd(e):Ae=t,ks.current=null}function xd(e){var t=e;do{var n=t.alternate;if(e=t.return,t.flags&32768){if(n=u0(n,t),n!==null){n.flags&=32767,Ae=n;return}if(e!==null)e.flags|=32768,e.subtreeFlags=0,e.deletions=null;else{Se=6,Ae=null;return}}else if(n=s0(n,t,Je),n!==null){Ae=n;return}if(t=t.sibling,t!==null){Ae=t;return}Ae=t=e}while(t!==null);Se===0&&(Se=5)}function un(e,t,n){var r=q,i=st.transition;try{st.transition=null,q=1,v0(e,t,n,r)}finally{st.transition=i,q=r}return null}function v0(e,t,n,r){do Yn();while(Bt!==null);if(W&6)throw Error(E(327));n=e.finishedWork;var i=e.finishedLanes;if(n===null)return null;if(e.finishedWork=null,e.finishedLanes=0,n===e.current)throw Error(E(177));e.callbackNode=null,e.callbackPriority=0;var o=n.lanes|n.childLanes;if(Jp(e,o),e===Ee&&(Ae=Ee=null,ze=0),!(n.subtreeFlags&2064)&&!(n.flags&2064)||Ni||(Ni=!0,Ed(Yi,function(){return Yn(),null})),o=(n.flags&15990)!==0,n.subtreeFlags&15990||o){o=st.transition,st.transition=null;var l=q;q=1;var a=W;W|=4,ks.current=null,f0(e,n),gd(n,e),Uh(oa),Ji=!!ia,oa=ia=null,e.current=n,d0(n),Bp(),W=a,q=l,st.transition=o}else e.current=n;if(Ni&&(Ni=!1,Bt=e,ho=i),o=e.pendingLanes,o===0&&(Xt=null),Wp(n.stateNode),Ge(e,we()),t!==null)for(r=e.onRecoverableError,n=0;n<t.length;n++)i=t[n],r(i.value,{componentStack:i.stack,digest:i.digest});if(po)throw po=!1,e=Ea,Ea=null,e;return ho&1&&e.tag!==0&&Yn(),o=e.pendingLanes,o&1?e===Na?zr++:(zr=0,Na=e):zr=0,an(),null}function Yn(){if(Bt!==null){var e=ef(ho),t=st.transition,n=q;try{if(st.transition=null,q=16>e?16:e,Bt===null)var r=!1;else{if(e=Bt,Bt=null,ho=0,W&6)throw Error(E(331));var i=W;for(W|=4,M=e.current;M!==null;){var o=M,l=o.child;if(M.flags&16){var a=o.deletions;if(a!==null){for(var s=0;s<a.length;s++){var u=a[s];for(M=u;M!==null;){var f=M;switch(f.tag){case 0:case 11:case 15:Tr(8,f,o)}var p=f.child;if(p!==null)p.return=f,M=p;else for(;M!==null;){f=M;var h=f.sibling,g=f.return;if(pd(f),f===u){M=null;break}if(h!==null){h.return=g,M=h;break}M=g}}}var v=o.alternate;if(v!==null){var y=v.child;if(y!==null){v.child=null;do{var x=y.sibling;y.sibling=null,y=x}while(y!==null)}}M=o}}if(o.subtreeFlags&2064&&l!==null)l.return=o,M=l;else e:for(;M!==null;){if(o=M,o.flags&2048)switch(o.tag){case 0:case 11:case 15:Tr(9,o,o.return)}var d=o.sibling;if(d!==null){d.return=o.return,M=d;break e}M=o.return}}var c=e.current;for(M=c;M!==null;){l=M;var m=l.child;if(l.subtreeFlags&2064&&m!==null)m.return=l,M=m;else e:for(l=c;M!==null;){if(a=M,a.flags&2048)try{switch(a.tag){case 0:case 11:case 15:Lo(9,a)}}catch(C){ve(a,a.return,C)}if(a===l){M=null;break e}var w=a.sibling;if(w!==null){w.return=a.return,M=w;break e}M=a.return}}if(W=i,an(),St&&typeof St.onPostCommitFiberRoot=="function")try{St.onPostCommitFiberRoot(Co,e)}catch{}r=!0}return r}finally{q=n,st.transition=t}}return!1}function Xu(e,t,n){t=tr(n,t),t=nd(e,t,1),e=Yt(e,t,1),t=De(),e!==null&&(ri(e,1,t),Ge(e,t))}function ve(e,t,n){if(e.tag===3)Xu(e,e,n);else for(;t!==null;){if(t.tag===3){Xu(t,e,n);break}else if(t.tag===1){var r=t.stateNode;if(typeof t.type.getDerivedStateFromError=="function"||typeof r.componentDidCatch=="function"&&(Xt===null||!Xt.has(r))){e=tr(n,e),e=rd(t,e,1),t=Yt(t,e,1),e=De(),t!==null&&(ri(t,1,e),Ge(t,e));break}}t=t.return}}function y0(e,t,n){var r=e.pingCache;r!==null&&r.delete(t),t=De(),e.pingedLanes|=e.suspendedLanes&n,Ee===e&&(ze&n)===n&&(Se===4||Se===3&&(ze&130023424)===ze&&500>we()-Ss?mn(e,0):xs|=n),Ge(e,t)}function Sd(e,t){t===0&&(e.mode&1?(t=gi,gi<<=1,!(gi&130023424)&&(gi=4194304)):t=1);var n=De();e=Lt(e,t),e!==null&&(ri(e,t,n),Ge(e,n))}function w0(e){var t=e.memoizedState,n=0;t!==null&&(n=t.retryLane),Sd(e,n)}function A0(e,t){var n=0;switch(e.tag){case 13:var r=e.stateNode,i=e.memoizedState;i!==null&&(n=i.retryLane);break;case 19:r=e.stateNode;break;default:throw Error(E(314))}r!==null&&r.delete(t),Sd(e,n)}var Cd;Cd=function(e,t,n){if(e!==null)if(e.memoizedProps!==t.pendingProps||Qe.current)Ve=!0;else{if(!(e.lanes&n)&&!(t.flags&128))return Ve=!1,a0(e,t,n);Ve=!!(e.flags&131072)}else Ve=!1,fe&&t.flags&1048576&&Rf(t,io,t.index);switch(t.lanes=0,t.tag){case 2:var r=t.type;Fi(e,t),e=t.pendingProps;var i=Jn(t,Ue.current);Gn(t,n),i=gs(null,t,r,e,i,n);var o=vs();return t.flags|=1,typeof i=="object"&&i!==null&&typeof i.render=="function"&&i.$$typeof===void 0?(t.tag=1,t.memoizedState=null,t.updateQueue=null,Ke(r)?(o=!0,no(t)):o=!1,t.memoizedState=i.state!==null&&i.state!==void 0?i.state:null,fs(t),i.updater=Io,t.stateNode=i,i._reactInternals=t,ha(t,r,e,n),t=va(null,t,r,!0,o,n)):(t.tag=0,fe&&o&&is(t),je(null,t,i,n),t=t.child),t;case 16:r=t.elementType;e:{switch(Fi(e,t),e=t.pendingProps,i=r._init,r=i(r._payload),t.type=r,i=t.tag=x0(r),e=pt(r,e),i){case 0:t=ga(null,t,r,e,n);break e;case 1:t=Fu(null,t,r,e,n);break e;case 11:t=ju(null,t,r,e,n);break e;case 14:t=Du(null,t,r,pt(r.type,e),n);break e}throw Error(E(306,r,""))}return t;case 0:return r=t.type,i=t.pendingProps,i=t.elementType===r?i:pt(r,i),ga(e,t,r,i,n);case 1:return r=t.type,i=t.pendingProps,i=t.elementType===r?i:pt(r,i),Fu(e,t,r,i,n);case 3:e:{if(ad(t),e===null)throw Error(E(387));r=t.pendingProps,o=t.memoizedState,i=o.element,zf(e,t),ao(t,r,null,n);var l=t.memoizedState;if(r=l.element,o.isDehydrated)if(o={element:r,isDehydrated:!1,cache:l.cache,pendingSuspenseBoundaries:l.pendingSuspenseBoundaries,transitions:l.transitions},t.updateQueue.baseState=o,t.memoizedState=o,t.flags&256){i=tr(Error(E(423)),t),t=$u(e,t,r,n,i);break e}else if(r!==i){i=tr(Error(E(424)),t),t=$u(e,t,r,n,i);break e}else for(Ze=Gt(t.stateNode.containerInfo.firstChild),qe=t,fe=!0,mt=null,n=Mf(t,null,r,n),t.child=n;n;)n.flags=n.flags&-3|4096,n=n.sibling;else{if(Zn(),r===i){t=Ot(e,t,n);break e}je(e,t,r,n)}t=t.child}return t;case 5:return bf(t),e===null&&fa(t),r=t.type,i=t.pendingProps,o=e!==null?e.memoizedProps:null,l=i.children,la(r,i)?l=null:o!==null&&la(r,o)&&(t.flags|=32),ld(e,t),je(e,t,l,n),t.child;case 6:return e===null&&fa(t),null;case 13:return sd(e,t,n);case 4:return ds(t,t.stateNode.containerInfo),r=t.pendingProps,e===null?t.child=qn(t,null,r,n):je(e,t,r,n),t.child;case 11:return r=t.type,i=t.pendingProps,i=t.elementType===r?i:pt(r,i),ju(e,t,r,i,n);case 7:return je(e,t,t.pendingProps,n),t.child;case 8:return je(e,t,t.pendingProps.children,n),t.child;case 12:return je(e,t,t.pendingProps.children,n),t.child;case 10:e:{if(r=t.type._context,i=t.pendingProps,o=t.memoizedProps,l=i.value,le(oo,r._currentValue),r._currentValue=l,o!==null)if(yt(o.value,l)){if(o.children===i.children&&!Qe.current){t=Ot(e,t,n);break e}}else for(o=t.child,o!==null&&(o.return=t);o!==null;){var a=o.dependencies;if(a!==null){l=o.child;for(var s=a.firstContext;s!==null;){if(s.context===r){if(o.tag===1){s=Tt(-1,n&-n),s.tag=2;var u=o.updateQueue;if(u!==null){u=u.shared;var f=u.pending;f===null?s.next=s:(s.next=f.next,f.next=s),u.pending=s}}o.lanes|=n,s=o.alternate,s!==null&&(s.lanes|=n),da(o.return,n,t),a.lanes|=n;break}s=s.next}}else if(o.tag===10)l=o.type===t.type?null:o.child;else if(o.tag===18){if(l=o.return,l===null)throw Error(E(341));l.lanes|=n,a=l.alternate,a!==null&&(a.lanes|=n),da(l,n,t),l=o.sibling}else l=o.child;if(l!==null)l.return=o;else for(l=o;l!==null;){if(l===t){l=null;break}if(o=l.sibling,o!==null){o.return=l.return,l=o;break}l=l.return}o=l}je(e,t,i.children,n),t=t.child}return t;case 9:return i=t.type,r=t.pendingProps.children,Gn(t,n),i=ut(i),r=r(i),t.flags|=1,je(e,t,r,n),t.child;case 14:return r=t.type,i=pt(r,t.pendingProps),i=pt(r.type,i),Du(e,t,r,i,n);case 15:return id(e,t,t.type,t.pendingProps,n);case 17:return r=t.type,i=t.pendingProps,i=t.elementType===r?i:pt(r,i),Fi(e,t),t.tag=1,Ke(r)?(e=!0,no(t)):e=!1,Gn(t,n),Of(t,r,i),ha(t,r,i,n),va(null,t,r,!0,e,n);case 19:return ud(e,t,n);case 22:return od(e,t,n)}throw Error(E(156,t.tag))};function Ed(e,t){return Xc(e,t)}function k0(e,t,n,r){this.tag=e,this.key=n,this.sibling=this.child=this.return=this.stateNode=this.type=this.elementType=null,this.index=0,this.ref=null,this.pendingProps=t,this.dependencies=this.memoizedState=this.updateQueue=this.memoizedProps=null,this.mode=r,this.subtreeFlags=this.flags=0,this.deletions=null,this.childLanes=this.lanes=0,this.alternate=null}function at(e,t,n,r){return new k0(e,t,n,r)}function Rs(e){return e=e.prototype,!(!e||!e.isReactComponent)}function x0(e){if(typeof e=="function")return Rs(e)?1:0;if(e!=null){if(e=e.$$typeof,e===Qa)return 11;if(e===Ka)return 14}return 2}function Zt(e,t){var n=e.alternate;return n===null?(n=at(e.tag,t,e.key,e.mode),n.elementType=e.elementType,n.type=e.type,n.stateNode=e.stateNode,n.alternate=e,e.alternate=n):(n.pendingProps=t,n.type=e.type,n.flags=0,n.subtreeFlags=0,n.deletions=null),n.flags=e.flags&14680064,n.childLanes=e.childLanes,n.lanes=e.lanes,n.child=e.child,n.memoizedProps=e.memoizedProps,n.memoizedState=e.memoizedState,n.updateQueue=e.updateQueue,t=e.dependencies,n.dependencies=t===null?null:{lanes:t.lanes,firstContext:t.firstContext},n.sibling=e.sibling,n.index=e.index,n.ref=e.ref,n}function Hi(e,t,n,r,i,o){var l=2;if(r=e,typeof e=="function")Rs(e)&&(l=1);else if(typeof e=="string")l=5;else e:switch(e){case Ln:return gn(n.children,i,o,t);case Wa:l=8,i|=8;break;case jl:return e=at(12,n,t,i|2),e.elementType=jl,e.lanes=o,e;case Dl:return e=at(13,n,t,i),e.elementType=Dl,e.lanes=o,e;case Fl:return e=at(19,n,t,i),e.elementType=Fl,e.lanes=o,e;case Oc:return _o(n,i,o,t);default:if(typeof e=="object"&&e!==null)switch(e.$$typeof){case zc:l=10;break e;case Lc:l=9;break e;case Qa:l=11;break e;case Ka:l=14;break e;case Ut:l=16,r=null;break e}throw Error(E(130,e==null?e:typeof e,""))}return t=at(l,n,t,i),t.elementType=e,t.type=r,t.lanes=o,t}function gn(e,t,n,r){return e=at(7,e,r,t),e.lanes=n,e}function _o(e,t,n,r){return e=at(22,e,r,t),e.elementType=Oc,e.lanes=n,e.stateNode={isHidden:!1},e}function Nl(e,t,n){return e=at(6,e,null,t),e.lanes=n,e}function Rl(e,t,n){return t=at(4,e.children!==null?e.children:[],e.key,t),t.lanes=n,t.stateNode={containerInfo:e.containerInfo,pendingChildren:null,implementation:e.implementation},t}function S0(e,t,n,r,i){this.tag=t,this.containerInfo=e,this.finishedWork=this.pingCache=this.current=this.pendingChildren=null,this.timeoutHandle=-1,this.callbackNode=this.pendingContext=this.context=null,this.callbackPriority=0,this.eventTimes=al(0),this.expirationTimes=al(-1),this.entangledLanes=this.finishedLanes=this.mutableReadLanes=this.expiredLanes=this.pingedLanes=this.suspendedLanes=this.pendingLanes=0,this.entanglements=al(0),this.identifierPrefix=r,this.onRecoverableError=i,this.mutableSourceEagerHydrationData=null}function Ps(e,t,n,r,i,o,l,a,s){return e=new S0(e,t,n,a,s),t===1?(t=1,o===!0&&(t|=8)):t=0,o=at(3,null,null,t),e.current=o,o.stateNode=e,o.memoizedState={element:r,isDehydrated:n,cache:null,transitions:null,pendingSuspenseBoundaries:null},fs(o),e}function C0(e,t,n){var r=3<arguments.length&&arguments[3]!==void 0?arguments[3]:null;return{$$typeof:zn,key:r==null?null:""+r,children:e,containerInfo:t,implementation:n}}function Nd(e){if(!e)return rn;e=e._reactInternals;e:{if(En(e)!==e||e.tag!==1)throw Error(E(170));var t=e;do{switch(t.tag){case 3:t=t.stateNode.context;break e;case 1:if(Ke(t.type)){t=t.stateNode.__reactInternalMemoizedMergedChildContext;break e}}t=t.return}while(t!==null);throw Error(E(171))}if(e.tag===1){var n=e.type;if(Ke(n))return Ef(e,n,t)}return t}function Rd(e,t,n,r,i,o,l,a,s){return e=Ps(n,r,!0,e,i,o,l,a,s),e.context=Nd(null),n=e.current,r=De(),i=Jt(n),o=Tt(r,i),o.callback=t??null,Yt(n,o,i),e.current.lanes=i,ri(e,i,r),Ge(e,r),e}function Mo(e,t,n,r){var i=t.current,o=De(),l=Jt(i);return n=Nd(n),t.context===null?t.context=n:t.pendingContext=n,t=Tt(o,l),t.payload={element:e},r=r===void 0?null:r,r!==null&&(t.callback=r),e=Yt(i,t,l),e!==null&&(vt(e,i,l,o),Ui(e,i,l)),l}function go(e){if(e=e.current,!e.child)return null;switch(e.child.tag){case 5:return e.child.stateNode;default:return e.child.stateNode}}function Ju(e,t){if(e=e.memoizedState,e!==null&&e.dehydrated!==null){var n=e.retryLane;e.retryLane=n!==0&&n<t?n:t}}function Ts(e,t){Ju(e,t),(e=e.alternate)&&Ju(e,t)}function E0(){return null}var Pd=typeof reportError=="function"?reportError:function(e){console.error(e)};function Is(e){this._internalRoot=e}bo.prototype.render=Is.prototype.render=function(e){var t=this._internalRoot;if(t===null)throw Error(E(409));Mo(e,t,null,null)};bo.prototype.unmount=Is.prototype.unmount=function(){var e=this._internalRoot;if(e!==null){this._internalRoot=null;var t=e.containerInfo;kn(function(){Mo(null,e,null,null)}),t[zt]=null}};function bo(e){this._internalRoot=e}bo.prototype.unstable_scheduleHydration=function(e){if(e){var t=rf();e={blockedOn:null,target:e,priority:t};for(var n=0;n<Dt.length&&t!==0&&t<Dt[n].priority;n++);Dt.splice(n,0,e),n===0&&lf(e)}};function zs(e){return!(!e||e.nodeType!==1&&e.nodeType!==9&&e.nodeType!==11)}function Uo(e){return!(!e||e.nodeType!==1&&e.nodeType!==9&&e.nodeType!==11&&(e.nodeType!==8||e.nodeValue!==" react-mount-point-unstable "))}function Zu(){}function N0(e,t,n,r,i){if(i){if(typeof r=="function"){var o=r;r=function(){var u=go(l);o.call(u)}}var l=Rd(t,r,e,0,null,!1,!1,"",Zu);return e._reactRootContainer=l,e[zt]=l.current,Hr(e.nodeType===8?e.parentNode:e),kn(),l}for(;i=e.lastChild;)e.removeChild(i);if(typeof r=="function"){var a=r;r=function(){var u=go(s);a.call(u)}}var s=Ps(e,0,!1,null,null,!1,!1,"",Zu);return e._reactRootContainer=s,e[zt]=s.current,Hr(e.nodeType===8?e.parentNode:e),kn(function(){Mo(t,s,n,r)}),s}function jo(e,t,n,r,i){var o=n._reactRootContainer;if(o){var l=o;if(typeof i=="function"){var a=i;i=function(){var s=go(l);a.call(s)}}Mo(t,l,e,i)}else l=N0(n,t,e,i,r);return go(l)}tf=function(e){switch(e.tag){case 3:var t=e.stateNode;if(t.current.memoizedState.isDehydrated){var n=Ar(t.pendingLanes);n!==0&&(Xa(t,n|1),Ge(t,we()),!(W&6)&&(nr=we()+500,an()))}break;case 13:kn(function(){var r=Lt(e,1);if(r!==null){var i=De();vt(r,e,1,i)}}),Ts(e,1)}};Ja=function(e){if(e.tag===13){var t=Lt(e,134217728);if(t!==null){var n=De();vt(t,e,134217728,n)}Ts(e,134217728)}};nf=function(e){if(e.tag===13){var t=Jt(e),n=Lt(e,t);if(n!==null){var r=De();vt(n,e,t,r)}Ts(e,t)}};rf=function(){return q};of=function(e,t){var n=q;try{return q=e,t()}finally{q=n}};Xl=function(e,t,n){switch(t){case"input":if(Hl(e,n),t=n.name,n.type==="radio"&&t!=null){for(n=e;n.parentNode;)n=n.parentNode;for(n=n.querySelectorAll("input[name="+JSON.stringify(""+t)+'][type="radio"]'),t=0;t<n.length;t++){var r=n[t];if(r!==e&&r.form===e.form){var i=Po(r);if(!i)throw Error(E(90));Mc(r),Hl(r,i)}}}break;case"textarea":Uc(e,n);break;case"select":t=n.value,t!=null&&Vn(e,!!n.multiple,t,!1)}};Vc=Cs;Wc=kn;var R0={usingClientEntryPoint:!1,Events:[oi,bn,Po,Bc,Hc,Cs]},vr={findFiberByHostInstance:dn,bundleType:0,version:"18.2.0",rendererPackageName:"react-dom"},P0={bundleType:vr.bundleType,version:vr.version,rendererPackageName:vr.rendererPackageName,rendererConfig:vr.rendererConfig,overrideHookState:null,overrideHookStateDeletePath:null,overrideHookStateRenamePath:null,overrideProps:null,overridePropsDeletePath:null,overridePropsRenamePath:null,setErrorHandler:null,setSuspenseHandler:null,scheduleUpdate:null,currentDispatcherRef:_t.ReactCurrentDispatcher,findHostInstanceByFiber:function(e){return e=Gc(e),e===null?null:e.stateNode},findFiberByHostInstance:vr.findFiberByHostInstance||E0,findHostInstancesForRefresh:null,scheduleRefresh:null,scheduleRoot:null,setRefreshHandler:null,getCurrentFiber:null,reconcilerVersion:"18.2.0-next-9e3b772b8-20220608"};if(typeof __REACT_DEVTOOLS_GLOBAL_HOOK__<"u"){var Ri=__REACT_DEVTOOLS_GLOBAL_HOOK__;if(!Ri.isDisabled&&Ri.supportsFiber)try{Co=Ri.inject(P0),St=Ri}catch{}}tt.__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED=R0;tt.createPortal=function(e,t){var n=2<arguments.length&&arguments[2]!==void 0?arguments[2]:null;if(!zs(t))throw Error(E(200));return C0(e,t,null,n)};tt.createRoot=function(e,t){if(!zs(e))throw Error(E(299));var n=!1,r="",i=Pd;return t!=null&&(t.unstable_strictMode===!0&&(n=!0),t.identifierPrefix!==void 0&&(r=t.identifierPrefix),t.onRecoverableError!==void 0&&(i=t.onRecoverableError)),t=Ps(e,1,!1,null,null,n,!1,r,i),e[zt]=t.current,Hr(e.nodeType===8?e.parentNode:e),new Is(t)};tt.findDOMNode=function(e){if(e==null)return null;if(e.nodeType===1)return e;var t=e._reactInternals;if(t===void 0)throw typeof e.render=="function"?Error(E(188)):(e=Object.keys(e).join(","),Error(E(268,e)));return e=Gc(t),e=e===null?null:e.stateNode,e};tt.flushSync=function(e){return kn(e)};tt.hydrate=function(e,t,n){if(!Uo(t))throw Error(E(200));return jo(null,e,t,!0,n)};tt.hydrateRoot=function(e,t,n){if(!zs(e))throw Error(E(405));var r=n!=null&&n.hydratedSources||null,i=!1,o="",l=Pd;if(n!=null&&(n.unstable_strictMode===!0&&(i=!0),n.identifierPrefix!==void 0&&(o=n.identifierPrefix),n.onRecoverableError!==void 0&&(l=n.onRecoverableError)),t=Rd(t,null,e,1,n??null,i,!1,o,l),e[zt]=t.current,Hr(e),r)for(e=0;e<r.length;e++)n=r[e],i=n._getVersion,i=i(n._source),t.mutableSourceEagerHydrationData==null?t.mutableSourceEagerHydrationData=[n,i]:t.mutableSourceEagerHydrationData.push(n,i);return new bo(t)};tt.render=function(e,t,n){if(!Uo(t))throw Error(E(200));return jo(null,e,t,!1,n)};tt.unmountComponentAtNode=function(e){if(!Uo(e))throw Error(E(40));return e._reactRootContainer?(kn(function(){jo(null,null,e,!1,function(){e._reactRootContainer=null,e[zt]=null})}),!0):!1};tt.unstable_batchedUpdates=Cs;tt.unstable_renderSubtreeIntoContainer=function(e,t,n,r){if(!Uo(n))throw Error(E(200));if(e==null||e._reactInternals===void 0)throw Error(E(38));return jo(e,t,n,!1,r)};tt.version="18.2.0-next-9e3b772b8-20220608";(function(e){function t(){if(!(typeof __REACT_DEVTOOLS_GLOBAL_HOOK__>"u"||typeof __REACT_DEVTOOLS_GLOBAL_HOOK__.checkDCE!="function"))try{__REACT_DEVTOOLS_GLOBAL_HOOK__.checkDCE(t)}catch(n){console.error(n)}}t(),e.exports=tt})(sp);var qu=Ml;_l.createRoot=qu.createRoot,_l.hydrateRoot=qu.hydrateRoot;const Td=(e,t)=>{const n=S.useRef(t);S.useEffect(()=>{n.current=t;const r=i=>{const{action:o,data:l}=i.data;n.current&&o===e&&n.current(l)};return window.addEventListener("message",r),()=>{window.removeEventListener("message",r)}},[e,t])},Id=()=>!window.invokeNative,Ye=async(e,t,n)=>{const r={method:"post",headers:{"Content-Type":"application/json; charset=UTF-8"},body:JSON.stringify(t)};if(Id()&&n)return n;const i=window.GetParentResourceName?window.GetParentResourceName():"decrypt-store",o=await fetch(`https://${i}/${e}`,r);if(!o.ok)throw new Error(`Erro ao fazer chamada da API: ${o.status} - ${o.statusText}`);return await o.json()};var Zr={},T0={get exports(){return Zr},set exports(e){Zr=e}},Do={};/**
 * @license React
 * react-jsx-runtime.production.min.js
 *
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */var I0=S,z0=Symbol.for("react.element"),L0=Symbol.for("react.fragment"),O0=Object.prototype.hasOwnProperty,_0=I0.__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.ReactCurrentOwner,M0={key:!0,ref:!0,__self:!0,__source:!0};function zd(e,t,n){var r,i={},o=null,l=null;n!==void 0&&(o=""+n),t.key!==void 0&&(o=""+t.key),t.ref!==void 0&&(l=t.ref);for(r in t)O0.call(t,r)&&!M0.hasOwnProperty(r)&&(i[r]=t[r]);if(e&&e.defaultProps)for(r in t=e.defaultProps,t)i[r]===void 0&&(i[r]=t[r]);return{$$typeof:z0,type:e,key:o,ref:l,props:i,_owner:_0.current}}Do.Fragment=L0;Do.jsx=zd;Do.jsxs=zd;(function(e){e.exports=Do})(T0);const A=Zr.jsx,z=Zr.jsxs,qt=Zr.Fragment,Ld=S.createContext(null),b0=({children:e})=>{const[t,n]=S.useState(!1);Td("setVisible",n);const r=()=>{Id()?n(i=>!i):(Ye("close"),n(!1))};return S.useEffect(()=>{const i=o=>{o.code==="Escape"&&r()};return window.addEventListener("keydown",i),()=>window.removeEventListener("keydown",i)},[]),A(Ld.Provider,{value:{visible:t,setVisible:n},children:e})},U0=()=>{const e=S.useContext(Ld);if(!e)throw new Error("useVisibility must be used within a VisibilityProvider");return e};var qr={},j0={get exports(){return qr},set exports(e){qr=e}},ee={};/** @license React v16.13.1
 * react-is.production.min.js
 *
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */var Ne=typeof Symbol=="function"&&Symbol.for,Ls=Ne?Symbol.for("react.element"):60103,Os=Ne?Symbol.for("react.portal"):60106,Fo=Ne?Symbol.for("react.fragment"):60107,$o=Ne?Symbol.for("react.strict_mode"):60108,Bo=Ne?Symbol.for("react.profiler"):60114,Ho=Ne?Symbol.for("react.provider"):60109,Vo=Ne?Symbol.for("react.context"):60110,_s=Ne?Symbol.for("react.async_mode"):60111,Wo=Ne?Symbol.for("react.concurrent_mode"):60111,Qo=Ne?Symbol.for("react.forward_ref"):60112,Ko=Ne?Symbol.for("react.suspense"):60113,D0=Ne?Symbol.for("react.suspense_list"):60120,Go=Ne?Symbol.for("react.memo"):60115,Yo=Ne?Symbol.for("react.lazy"):60116,F0=Ne?Symbol.for("react.block"):60121,$0=Ne?Symbol.for("react.fundamental"):60117,B0=Ne?Symbol.for("react.responder"):60118,H0=Ne?Symbol.for("react.scope"):60119;function rt(e){if(typeof e=="object"&&e!==null){var t=e.$$typeof;switch(t){case Ls:switch(e=e.type,e){case _s:case Wo:case Fo:case Bo:case $o:case Ko:return e;default:switch(e=e&&e.$$typeof,e){case Vo:case Qo:case Yo:case Go:case Ho:return e;default:return t}}case Os:return t}}}function Od(e){return rt(e)===Wo}ee.AsyncMode=_s;ee.ConcurrentMode=Wo;ee.ContextConsumer=Vo;ee.ContextProvider=Ho;ee.Element=Ls;ee.ForwardRef=Qo;ee.Fragment=Fo;ee.Lazy=Yo;ee.Memo=Go;ee.Portal=Os;ee.Profiler=Bo;ee.StrictMode=$o;ee.Suspense=Ko;ee.isAsyncMode=function(e){return Od(e)||rt(e)===_s};ee.isConcurrentMode=Od;ee.isContextConsumer=function(e){return rt(e)===Vo};ee.isContextProvider=function(e){return rt(e)===Ho};ee.isElement=function(e){return typeof e=="object"&&e!==null&&e.$$typeof===Ls};ee.isForwardRef=function(e){return rt(e)===Qo};ee.isFragment=function(e){return rt(e)===Fo};ee.isLazy=function(e){return rt(e)===Yo};ee.isMemo=function(e){return rt(e)===Go};ee.isPortal=function(e){return rt(e)===Os};ee.isProfiler=function(e){return rt(e)===Bo};ee.isStrictMode=function(e){return rt(e)===$o};ee.isSuspense=function(e){return rt(e)===Ko};ee.isValidElementType=function(e){return typeof e=="string"||typeof e=="function"||e===Fo||e===Wo||e===Bo||e===$o||e===Ko||e===D0||typeof e=="object"&&e!==null&&(e.$$typeof===Yo||e.$$typeof===Go||e.$$typeof===Ho||e.$$typeof===Vo||e.$$typeof===Qo||e.$$typeof===$0||e.$$typeof===B0||e.$$typeof===H0||e.$$typeof===F0)};ee.typeOf=rt;(function(e){e.exports=ee})(j0);function V0(e){function t(I,O,_,D,k){for(var V=0,P=0,ge=0,Y=0,J,$,Re=0,Be=0,K,Oe=K=J=0,X=0,Pe=0,sr=0,Te=0,ci=_.length,ur=ci-1,ft,F="",ye="",el="",tl="",Mt;X<ci;){if($=_.charCodeAt(X),X===ur&&P+Y+ge+V!==0&&(P!==0&&($=P===47?10:47),Y=ge=V=0,ci++,ur++),P+Y+ge+V===0){if(X===ur&&(0<Pe&&(F=F.replace(h,"")),0<F.trim().length)){switch($){case 32:case 9:case 59:case 13:case 10:break;default:F+=_.charAt(X)}$=59}switch($){case 123:for(F=F.trim(),J=F.charCodeAt(0),K=1,Te=++X;X<ci;){switch($=_.charCodeAt(X)){case 123:K++;break;case 125:K--;break;case 47:switch($=_.charCodeAt(X+1)){case 42:case 47:e:{for(Oe=X+1;Oe<ur;++Oe)switch(_.charCodeAt(Oe)){case 47:if($===42&&_.charCodeAt(Oe-1)===42&&X+2!==Oe){X=Oe+1;break e}break;case 10:if($===47){X=Oe+1;break e}}X=Oe}}break;case 91:$++;case 40:$++;case 34:case 39:for(;X++<ur&&_.charCodeAt(X)!==$;);}if(K===0)break;X++}switch(K=_.substring(Te,X),J===0&&(J=(F=F.replace(p,"").trim()).charCodeAt(0)),J){case 64:switch(0<Pe&&(F=F.replace(h,"")),$=F.charCodeAt(1),$){case 100:case 109:case 115:case 45:Pe=O;break;default:Pe=de}if(K=t(O,Pe,K,$,k+1),Te=K.length,0<N&&(Pe=n(de,F,sr),Mt=a(3,K,Pe,O,te,Q,Te,$,k,D),F=Pe.join(""),Mt!==void 0&&(Te=(K=Mt.trim()).length)===0&&($=0,K="")),0<Te)switch($){case 115:F=F.replace(T,l);case 100:case 109:case 45:K=F+"{"+K+"}";break;case 107:F=F.replace(c,"$1 $2"),K=F+"{"+K+"}",K=ce===1||ce===2&&o("@"+K,3)?"@-webkit-"+K+"@"+K:"@"+K;break;default:K=F+K,D===112&&(K=(ye+=K,""))}else K="";break;default:K=t(O,n(O,F,sr),K,D,k+1)}el+=K,K=sr=Pe=Oe=J=0,F="",$=_.charCodeAt(++X);break;case 125:case 59:if(F=(0<Pe?F.replace(h,""):F).trim(),1<(Te=F.length))switch(Oe===0&&(J=F.charCodeAt(0),J===45||96<J&&123>J)&&(Te=(F=F.replace(" ",":")).length),0<N&&(Mt=a(1,F,O,I,te,Q,ye.length,D,k,D))!==void 0&&(Te=(F=Mt.trim()).length)===0&&(F="\0\0"),J=F.charCodeAt(0),$=F.charCodeAt(1),J){case 0:break;case 64:if($===105||$===99){tl+=F+_.charAt(X);break}default:F.charCodeAt(Te-1)!==58&&(ye+=i(F,J,$,F.charCodeAt(2)))}sr=Pe=Oe=J=0,F="",$=_.charCodeAt(++X)}}switch($){case 13:case 10:P===47?P=0:1+J===0&&D!==107&&0<F.length&&(Pe=1,F+="\0"),0<N*j&&a(0,F,O,I,te,Q,ye.length,D,k,D),Q=1,te++;break;case 59:case 125:if(P+Y+ge+V===0){Q++;break}default:switch(Q++,ft=_.charAt(X),$){case 9:case 32:if(Y+V+P===0)switch(Re){case 44:case 58:case 9:case 32:ft="";break;default:$!==32&&(ft=" ")}break;case 0:ft="\\0";break;case 12:ft="\\f";break;case 11:ft="\\v";break;case 38:Y+P+V===0&&(Pe=sr=1,ft="\f"+ft);break;case 108:if(Y+P+V+ne===0&&0<Oe)switch(X-Oe){case 2:Re===112&&_.charCodeAt(X-3)===58&&(ne=Re);case 8:Be===111&&(ne=Be)}break;case 58:Y+P+V===0&&(Oe=X);break;case 44:P+ge+Y+V===0&&(Pe=1,ft+="\r");break;case 34:case 39:P===0&&(Y=Y===$?0:Y===0?$:Y);break;case 91:Y+P+ge===0&&V++;break;case 93:Y+P+ge===0&&V--;break;case 41:Y+P+V===0&&ge--;break;case 40:if(Y+P+V===0){if(J===0)switch(2*Re+3*Be){case 533:break;default:J=1}ge++}break;case 64:P+ge+Y+V+Oe+K===0&&(K=1);break;case 42:case 47:if(!(0<Y+V+ge))switch(P){case 0:switch(2*$+3*_.charCodeAt(X+1)){case 235:P=47;break;case 220:Te=X,P=42}break;case 42:$===47&&Re===42&&Te+2!==X&&(_.charCodeAt(Te+2)===33&&(ye+=_.substring(Te,X+1)),ft="",P=0)}}P===0&&(F+=ft)}Be=Re,Re=$,X++}if(Te=ye.length,0<Te){if(Pe=O,0<N&&(Mt=a(2,ye,Pe,I,te,Q,Te,D,k,D),Mt!==void 0&&(ye=Mt).length===0))return tl+ye+el;if(ye=Pe.join(",")+"{"+ye+"}",ce*ne!==0){switch(ce!==2||o(ye,2)||(ne=0),ne){case 111:ye=ye.replace(w,":-moz-$1")+ye;break;case 112:ye=ye.replace(m,"::-webkit-input-$1")+ye.replace(m,"::-moz-$1")+ye.replace(m,":-ms-input-$1")+ye}ne=0}}return tl+ye+el}function n(I,O,_){var D=O.trim().split(x);O=D;var k=D.length,V=I.length;switch(V){case 0:case 1:var P=0;for(I=V===0?"":I[0]+" ";P<k;++P)O[P]=r(I,O[P],_).trim();break;default:var ge=P=0;for(O=[];P<k;++P)for(var Y=0;Y<V;++Y)O[ge++]=r(I[Y]+" ",D[P],_).trim()}return O}function r(I,O,_){var D=O.charCodeAt(0);switch(33>D&&(D=(O=O.trim()).charCodeAt(0)),D){case 38:return O.replace(d,"$1"+I.trim());case 58:return I.trim()+O.replace(d,"$1"+I.trim());default:if(0<1*_&&0<O.indexOf("\f"))return O.replace(d,(I.charCodeAt(0)===58?"":"$1")+I.trim())}return I+O}function i(I,O,_,D){var k=I+";",V=2*O+3*_+4*D;if(V===944){I=k.indexOf(":",9)+1;var P=k.substring(I,k.length-1).trim();return P=k.substring(0,I).trim()+P+";",ce===1||ce===2&&o(P,1)?"-webkit-"+P+P:P}if(ce===0||ce===2&&!o(k,1))return k;switch(V){case 1015:return k.charCodeAt(10)===97?"-webkit-"+k+k:k;case 951:return k.charCodeAt(3)===116?"-webkit-"+k+k:k;case 963:return k.charCodeAt(5)===110?"-webkit-"+k+k:k;case 1009:if(k.charCodeAt(4)!==100)break;case 969:case 942:return"-webkit-"+k+k;case 978:return"-webkit-"+k+"-moz-"+k+k;case 1019:case 983:return"-webkit-"+k+"-moz-"+k+"-ms-"+k+k;case 883:if(k.charCodeAt(8)===45)return"-webkit-"+k+k;if(0<k.indexOf("image-set(",11))return k.replace(oe,"$1-webkit-$2")+k;break;case 932:if(k.charCodeAt(4)===45)switch(k.charCodeAt(5)){case 103:return"-webkit-box-"+k.replace("-grow","")+"-webkit-"+k+"-ms-"+k.replace("grow","positive")+k;case 115:return"-webkit-"+k+"-ms-"+k.replace("shrink","negative")+k;case 98:return"-webkit-"+k+"-ms-"+k.replace("basis","preferred-size")+k}return"-webkit-"+k+"-ms-"+k+k;case 964:return"-webkit-"+k+"-ms-flex-"+k+k;case 1023:if(k.charCodeAt(8)!==99)break;return P=k.substring(k.indexOf(":",15)).replace("flex-","").replace("space-between","justify"),"-webkit-box-pack"+P+"-webkit-"+k+"-ms-flex-pack"+P+k;case 1005:return v.test(k)?k.replace(g,":-webkit-")+k.replace(g,":-moz-")+k:k;case 1e3:switch(P=k.substring(13).trim(),O=P.indexOf("-")+1,P.charCodeAt(0)+P.charCodeAt(O)){case 226:P=k.replace(C,"tb");break;case 232:P=k.replace(C,"tb-rl");break;case 220:P=k.replace(C,"lr");break;default:return k}return"-webkit-"+k+"-ms-"+P+k;case 1017:if(k.indexOf("sticky",9)===-1)break;case 975:switch(O=(k=I).length-10,P=(k.charCodeAt(O)===33?k.substring(0,O):k).substring(I.indexOf(":",7)+1).trim(),V=P.charCodeAt(0)+(P.charCodeAt(7)|0)){case 203:if(111>P.charCodeAt(8))break;case 115:k=k.replace(P,"-webkit-"+P)+";"+k;break;case 207:case 102:k=k.replace(P,"-webkit-"+(102<V?"inline-":"")+"box")+";"+k.replace(P,"-webkit-"+P)+";"+k.replace(P,"-ms-"+P+"box")+";"+k}return k+";";case 938:if(k.charCodeAt(5)===45)switch(k.charCodeAt(6)){case 105:return P=k.replace("-items",""),"-webkit-"+k+"-webkit-box-"+P+"-ms-flex-"+P+k;case 115:return"-webkit-"+k+"-ms-flex-item-"+k.replace(R,"")+k;default:return"-webkit-"+k+"-ms-flex-line-pack"+k.replace("align-content","").replace(R,"")+k}break;case 973:case 989:if(k.charCodeAt(3)!==45||k.charCodeAt(4)===122)break;case 931:case 953:if(U.test(I)===!0)return(P=I.substring(I.indexOf(":")+1)).charCodeAt(0)===115?i(I.replace("stretch","fill-available"),O,_,D).replace(":fill-available",":stretch"):k.replace(P,"-webkit-"+P)+k.replace(P,"-moz-"+P.replace("fill-",""))+k;break;case 962:if(k="-webkit-"+k+(k.charCodeAt(5)===102?"-ms-"+k:"")+k,_+D===211&&k.charCodeAt(13)===105&&0<k.indexOf("transform",10))return k.substring(0,k.indexOf(";",27)+1).replace(y,"$1-webkit-$2")+k}return k}function o(I,O){var _=I.indexOf(O===1?":":"{"),D=I.substring(0,O!==3?_:10);return _=I.substring(_+1,I.length-1),b(O!==2?D:D.replace(B,"$1"),_,O)}function l(I,O){var _=i(O,O.charCodeAt(0),O.charCodeAt(1),O.charCodeAt(2));return _!==O+";"?_.replace(L," or ($1)").substring(4):"("+O+")"}function a(I,O,_,D,k,V,P,ge,Y,J){for(var $=0,Re=O,Be;$<N;++$)switch(Be=ae[$].call(f,I,Re,_,D,k,V,P,ge,Y,J)){case void 0:case!1:case!0:case null:break;default:Re=Be}if(Re!==O)return Re}function s(I){switch(I){case void 0:case null:N=ae.length=0;break;default:if(typeof I=="function")ae[N++]=I;else if(typeof I=="object")for(var O=0,_=I.length;O<_;++O)s(I[O]);else j=!!I|0}return s}function u(I){return I=I.prefix,I!==void 0&&(b=null,I?typeof I!="function"?ce=1:(ce=2,b=I):ce=0),u}function f(I,O){var _=I;if(33>_.charCodeAt(0)&&(_=_.trim()),re=_,_=[re],0<N){var D=a(-1,O,_,_,te,Q,0,0,0,0);D!==void 0&&typeof D=="string"&&(O=D)}var k=t(de,_,O,0,0);return 0<N&&(D=a(-2,k,_,_,te,Q,k.length,0,0,0),D!==void 0&&(k=D)),re="",ne=0,Q=te=1,k}var p=/^\0+/g,h=/[\0\r\f]/g,g=/: */g,v=/zoo|gra/,y=/([,: ])(transform)/g,x=/,\r+?/g,d=/([\t\r\n ])*\f?&/g,c=/@(k\w+)\s*(\S*)\s*/,m=/::(place)/g,w=/:(read-only)/g,C=/[svh]\w+-[tblr]{2}/,T=/\(\s*(.*)\s*\)/g,L=/([\s\S]*?);/g,R=/-self|flex-/g,B=/[^]*?(:[rp][el]a[\w-]+)[^]*/,U=/stretch|:\s*\w+\-(?:conte|avail)/,oe=/([^-])(image-set\()/,Q=1,te=1,ne=0,ce=1,de=[],ae=[],N=0,b=null,j=0,re="";return f.use=s,f.set=u,e!==void 0&&u(e),f}var W0={animationIterationCount:1,borderImageOutset:1,borderImageSlice:1,borderImageWidth:1,boxFlex:1,boxFlexGroup:1,boxOrdinalGroup:1,columnCount:1,columns:1,flex:1,flexGrow:1,flexPositive:1,flexShrink:1,flexNegative:1,flexOrder:1,gridRow:1,gridRowEnd:1,gridRowSpan:1,gridRowStart:1,gridColumn:1,gridColumnEnd:1,gridColumnSpan:1,gridColumnStart:1,msGridRow:1,msGridRowSpan:1,msGridColumn:1,msGridColumnSpan:1,fontWeight:1,lineHeight:1,opacity:1,order:1,orphans:1,tabSize:1,widows:1,zIndex:1,zoom:1,WebkitLineClamp:1,fillOpacity:1,floodOpacity:1,stopOpacity:1,strokeDasharray:1,strokeDashoffset:1,strokeMiterlimit:1,strokeOpacity:1,strokeWidth:1};function Q0(e){var t=Object.create(null);return function(n){return t[n]===void 0&&(t[n]=e(n)),t[n]}}var K0=/^((children|dangerouslySetInnerHTML|key|ref|autoFocus|defaultValue|defaultChecked|innerHTML|suppressContentEditableWarning|suppressHydrationWarning|valueLink|abbr|accept|acceptCharset|accessKey|action|allow|allowUserMedia|allowPaymentRequest|allowFullScreen|allowTransparency|alt|async|autoComplete|autoPlay|capture|cellPadding|cellSpacing|challenge|charSet|checked|cite|classID|className|cols|colSpan|content|contentEditable|contextMenu|controls|controlsList|coords|crossOrigin|data|dateTime|decoding|default|defer|dir|disabled|disablePictureInPicture|download|draggable|encType|enterKeyHint|form|formAction|formEncType|formMethod|formNoValidate|formTarget|frameBorder|headers|height|hidden|high|href|hrefLang|htmlFor|httpEquiv|id|inputMode|integrity|is|keyParams|keyType|kind|label|lang|list|loading|loop|low|marginHeight|marginWidth|max|maxLength|media|mediaGroup|method|min|minLength|multiple|muted|name|nonce|noValidate|open|optimum|pattern|placeholder|playsInline|poster|preload|profile|radioGroup|readOnly|referrerPolicy|rel|required|reversed|role|rows|rowSpan|sandbox|scope|scoped|scrolling|seamless|selected|shape|size|sizes|slot|span|spellCheck|src|srcDoc|srcLang|srcSet|start|step|style|summary|tabIndex|target|title|translate|type|useMap|value|width|wmode|wrap|about|datatype|inlist|prefix|property|resource|typeof|vocab|autoCapitalize|autoCorrect|autoSave|color|incremental|fallback|inert|itemProp|itemScope|itemType|itemID|itemRef|on|option|results|security|unselectable|accentHeight|accumulate|additive|alignmentBaseline|allowReorder|alphabetic|amplitude|arabicForm|ascent|attributeName|attributeType|autoReverse|azimuth|baseFrequency|baselineShift|baseProfile|bbox|begin|bias|by|calcMode|capHeight|clip|clipPathUnits|clipPath|clipRule|colorInterpolation|colorInterpolationFilters|colorProfile|colorRendering|contentScriptType|contentStyleType|cursor|cx|cy|d|decelerate|descent|diffuseConstant|direction|display|divisor|dominantBaseline|dur|dx|dy|edgeMode|elevation|enableBackground|end|exponent|externalResourcesRequired|fill|fillOpacity|fillRule|filter|filterRes|filterUnits|floodColor|floodOpacity|focusable|fontFamily|fontSize|fontSizeAdjust|fontStretch|fontStyle|fontVariant|fontWeight|format|from|fr|fx|fy|g1|g2|glyphName|glyphOrientationHorizontal|glyphOrientationVertical|glyphRef|gradientTransform|gradientUnits|hanging|horizAdvX|horizOriginX|ideographic|imageRendering|in|in2|intercept|k|k1|k2|k3|k4|kernelMatrix|kernelUnitLength|kerning|keyPoints|keySplines|keyTimes|lengthAdjust|letterSpacing|lightingColor|limitingConeAngle|local|markerEnd|markerMid|markerStart|markerHeight|markerUnits|markerWidth|mask|maskContentUnits|maskUnits|mathematical|mode|numOctaves|offset|opacity|operator|order|orient|orientation|origin|overflow|overlinePosition|overlineThickness|panose1|paintOrder|pathLength|patternContentUnits|patternTransform|patternUnits|pointerEvents|points|pointsAtX|pointsAtY|pointsAtZ|preserveAlpha|preserveAspectRatio|primitiveUnits|r|radius|refX|refY|renderingIntent|repeatCount|repeatDur|requiredExtensions|requiredFeatures|restart|result|rotate|rx|ry|scale|seed|shapeRendering|slope|spacing|specularConstant|specularExponent|speed|spreadMethod|startOffset|stdDeviation|stemh|stemv|stitchTiles|stopColor|stopOpacity|strikethroughPosition|strikethroughThickness|string|stroke|strokeDasharray|strokeDashoffset|strokeLinecap|strokeLinejoin|strokeMiterlimit|strokeOpacity|strokeWidth|surfaceScale|systemLanguage|tableValues|targetX|targetY|textAnchor|textDecoration|textRendering|textLength|to|transform|u1|u2|underlinePosition|underlineThickness|unicode|unicodeBidi|unicodeRange|unitsPerEm|vAlphabetic|vHanging|vIdeographic|vMathematical|values|vectorEffect|version|vertAdvY|vertOriginX|vertOriginY|viewBox|viewTarget|visibility|widths|wordSpacing|writingMode|x|xHeight|x1|x2|xChannelSelector|xlinkActuate|xlinkArcrole|xlinkHref|xlinkRole|xlinkShow|xlinkTitle|xlinkType|xmlBase|xmlns|xmlnsXlink|xmlLang|xmlSpace|y|y1|y2|yChannelSelector|z|zoomAndPan|for|class|autofocus)|(([Dd][Aa][Tt][Aa]|[Aa][Rr][Ii][Aa]|x)-.*))$/,ec=Q0(function(e){return K0.test(e)||e.charCodeAt(0)===111&&e.charCodeAt(1)===110&&e.charCodeAt(2)<91}),Ms=qr,G0={childContextTypes:!0,contextType:!0,contextTypes:!0,defaultProps:!0,displayName:!0,getDefaultProps:!0,getDerivedStateFromError:!0,getDerivedStateFromProps:!0,mixins:!0,propTypes:!0,type:!0},Y0={name:!0,length:!0,prototype:!0,caller:!0,callee:!0,arguments:!0,arity:!0},X0={$$typeof:!0,render:!0,defaultProps:!0,displayName:!0,propTypes:!0},_d={$$typeof:!0,compare:!0,defaultProps:!0,displayName:!0,propTypes:!0,type:!0},bs={};bs[Ms.ForwardRef]=X0;bs[Ms.Memo]=_d;function tc(e){return Ms.isMemo(e)?_d:bs[e.$$typeof]||G0}var J0=Object.defineProperty,Z0=Object.getOwnPropertyNames,nc=Object.getOwnPropertySymbols,q0=Object.getOwnPropertyDescriptor,em=Object.getPrototypeOf,rc=Object.prototype;function Md(e,t,n){if(typeof t!="string"){if(rc){var r=em(t);r&&r!==rc&&Md(e,r,n)}var i=Z0(t);nc&&(i=i.concat(nc(t)));for(var o=tc(e),l=tc(t),a=0;a<i.length;++a){var s=i[a];if(!Y0[s]&&!(n&&n[s])&&!(l&&l[s])&&!(o&&o[s])){var u=q0(t,s);try{J0(e,s,u)}catch{}}}}return e}var tm=Md;function xt(){return(xt=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}var ic=function(e,t){for(var n=[e[0]],r=0,i=t.length;r<i;r+=1)n.push(t[r],e[r+1]);return n},Ta=function(e){return e!==null&&typeof e=="object"&&(e.toString?e.toString():Object.prototype.toString.call(e))==="[object Object]"&&!qr.typeOf(e)},vo=Object.freeze([]),en=Object.freeze({});function ei(e){return typeof e=="function"}function oc(e){return e.displayName||e.name||"Component"}function Us(e){return e&&typeof e.styledComponentId=="string"}var rr=typeof process<"u"&&({}.REACT_APP_SC_ATTR||{}.SC_ATTR)||"data-styled",js=typeof window<"u"&&"HTMLElement"in window,nm=Boolean(typeof SC_DISABLE_SPEEDY=="boolean"?SC_DISABLE_SPEEDY:typeof process<"u"&&{}.REACT_APP_SC_DISABLE_SPEEDY!==void 0&&{}.REACT_APP_SC_DISABLE_SPEEDY!==""?{}.REACT_APP_SC_DISABLE_SPEEDY!=="false"&&{}.REACT_APP_SC_DISABLE_SPEEDY:typeof process<"u"&&{}.SC_DISABLE_SPEEDY!==void 0&&{}.SC_DISABLE_SPEEDY!==""?{}.SC_DISABLE_SPEEDY!=="false"&&{}.SC_DISABLE_SPEEDY:!1),rm={};function ai(e){for(var t=arguments.length,n=new Array(t>1?t-1:0),r=1;r<t;r++)n[r-1]=arguments[r];throw new Error("An error occurred. See https://git.io/JUIaE#"+e+" for more information."+(n.length>0?" Args: "+n.join(", "):""))}var im=function(){function e(n){this.groupSizes=new Uint32Array(512),this.length=512,this.tag=n}var t=e.prototype;return t.indexOfGroup=function(n){for(var r=0,i=0;i<n;i++)r+=this.groupSizes[i];return r},t.insertRules=function(n,r){if(n>=this.groupSizes.length){for(var i=this.groupSizes,o=i.length,l=o;n>=l;)(l<<=1)<0&&ai(16,""+n);this.groupSizes=new Uint32Array(l),this.groupSizes.set(i),this.length=l;for(var a=o;a<l;a++)this.groupSizes[a]=0}for(var s=this.indexOfGroup(n+1),u=0,f=r.length;u<f;u++)this.tag.insertRule(s,r[u])&&(this.groupSizes[n]++,s++)},t.clearGroup=function(n){if(n<this.length){var r=this.groupSizes[n],i=this.indexOfGroup(n),o=i+r;this.groupSizes[n]=0;for(var l=i;l<o;l++)this.tag.deleteRule(i)}},t.getGroup=function(n){var r="";if(n>=this.length||this.groupSizes[n]===0)return r;for(var i=this.groupSizes[n],o=this.indexOfGroup(n),l=o+i,a=o;a<l;a++)r+=this.tag.getRule(a)+`/*!sc*/
`;return r},e}(),Vi=new Map,yo=new Map,Lr=1,Pi=function(e){if(Vi.has(e))return Vi.get(e);for(;yo.has(Lr);)Lr++;var t=Lr++;return Vi.set(e,t),yo.set(t,e),t},om=function(e){return yo.get(e)},lm=function(e,t){t>=Lr&&(Lr=t+1),Vi.set(e,t),yo.set(t,e)},am="style["+rr+'][data-styled-version="5.3.6"]',sm=new RegExp("^"+rr+'\\.g(\\d+)\\[id="([\\w\\d-]+)"\\].*?"([^"]*)'),um=function(e,t,n){for(var r,i=n.split(","),o=0,l=i.length;o<l;o++)(r=i[o])&&e.registerName(t,r)},cm=function(e,t){for(var n=(t.textContent||"").split(`/*!sc*/
`),r=[],i=0,o=n.length;i<o;i++){var l=n[i].trim();if(l){var a=l.match(sm);if(a){var s=0|parseInt(a[1],10),u=a[2];s!==0&&(lm(u,s),um(e,u,a[3]),e.getTag().insertRules(s,r)),r.length=0}else r.push(l)}}},fm=function(){return typeof __webpack_nonce__<"u"?__webpack_nonce__:null},bd=function(e){var t=document.head,n=e||t,r=document.createElement("style"),i=function(a){for(var s=a.childNodes,u=s.length;u>=0;u--){var f=s[u];if(f&&f.nodeType===1&&f.hasAttribute(rr))return f}}(n),o=i!==void 0?i.nextSibling:null;r.setAttribute(rr,"active"),r.setAttribute("data-styled-version","5.3.6");var l=fm();return l&&r.setAttribute("nonce",l),n.insertBefore(r,o),r},dm=function(){function e(n){var r=this.element=bd(n);r.appendChild(document.createTextNode("")),this.sheet=function(i){if(i.sheet)return i.sheet;for(var o=document.styleSheets,l=0,a=o.length;l<a;l++){var s=o[l];if(s.ownerNode===i)return s}ai(17)}(r),this.length=0}var t=e.prototype;return t.insertRule=function(n,r){try{return this.sheet.insertRule(r,n),this.length++,!0}catch{return!1}},t.deleteRule=function(n){this.sheet.deleteRule(n),this.length--},t.getRule=function(n){var r=this.sheet.cssRules[n];return r!==void 0&&typeof r.cssText=="string"?r.cssText:""},e}(),pm=function(){function e(n){var r=this.element=bd(n);this.nodes=r.childNodes,this.length=0}var t=e.prototype;return t.insertRule=function(n,r){if(n<=this.length&&n>=0){var i=document.createTextNode(r),o=this.nodes[n];return this.element.insertBefore(i,o||null),this.length++,!0}return!1},t.deleteRule=function(n){this.element.removeChild(this.nodes[n]),this.length--},t.getRule=function(n){return n<this.length?this.nodes[n].textContent:""},e}(),hm=function(){function e(n){this.rules=[],this.length=0}var t=e.prototype;return t.insertRule=function(n,r){return n<=this.length&&(this.rules.splice(n,0,r),this.length++,!0)},t.deleteRule=function(n){this.rules.splice(n,1),this.length--},t.getRule=function(n){return n<this.length?this.rules[n]:""},e}(),lc=js,mm={isServer:!js,useCSSOMInjection:!nm},wo=function(){function e(n,r,i){n===void 0&&(n=en),r===void 0&&(r={}),this.options=xt({},mm,{},n),this.gs=r,this.names=new Map(i),this.server=!!n.isServer,!this.server&&js&&lc&&(lc=!1,function(o){for(var l=document.querySelectorAll(am),a=0,s=l.length;a<s;a++){var u=l[a];u&&u.getAttribute(rr)!=="active"&&(cm(o,u),u.parentNode&&u.parentNode.removeChild(u))}}(this))}e.registerId=function(n){return Pi(n)};var t=e.prototype;return t.reconstructWithOptions=function(n,r){return r===void 0&&(r=!0),new e(xt({},this.options,{},n),this.gs,r&&this.names||void 0)},t.allocateGSInstance=function(n){return this.gs[n]=(this.gs[n]||0)+1},t.getTag=function(){return this.tag||(this.tag=(i=(r=this.options).isServer,o=r.useCSSOMInjection,l=r.target,n=i?new hm(l):o?new dm(l):new pm(l),new im(n)));var n,r,i,o,l},t.hasNameForId=function(n,r){return this.names.has(n)&&this.names.get(n).has(r)},t.registerName=function(n,r){if(Pi(n),this.names.has(n))this.names.get(n).add(r);else{var i=new Set;i.add(r),this.names.set(n,i)}},t.insertRules=function(n,r,i){this.registerName(n,r),this.getTag().insertRules(Pi(n),i)},t.clearNames=function(n){this.names.has(n)&&this.names.get(n).clear()},t.clearRules=function(n){this.getTag().clearGroup(Pi(n)),this.clearNames(n)},t.clearTag=function(){this.tag=void 0},t.toString=function(){return function(n){for(var r=n.getTag(),i=r.length,o="",l=0;l<i;l++){var a=om(l);if(a!==void 0){var s=n.names.get(a),u=r.getGroup(l);if(s&&u&&s.size){var f=rr+".g"+l+'[id="'+a+'"]',p="";s!==void 0&&s.forEach(function(h){h.length>0&&(p+=h+",")}),o+=""+u+f+'{content:"'+p+`"}/*!sc*/
`}}}return o}(this)},e}(),gm=/(a)(d)/gi,ac=function(e){return String.fromCharCode(e+(e>25?39:97))};function Ia(e){var t,n="";for(t=Math.abs(e);t>52;t=t/52|0)n=ac(t%52)+n;return(ac(t%52)+n).replace(gm,"$1-$2")}var Hn=function(e,t){for(var n=t.length;n;)e=33*e^t.charCodeAt(--n);return e},Ud=function(e){return Hn(5381,e)};function jd(e){for(var t=0;t<e.length;t+=1){var n=e[t];if(ei(n)&&!Us(n))return!1}return!0}var vm=Ud("5.3.6"),ym=function(){function e(t,n,r){this.rules=t,this.staticRulesId="",this.isStatic=(r===void 0||r.isStatic)&&jd(t),this.componentId=n,this.baseHash=Hn(vm,n),this.baseStyle=r,wo.registerId(n)}return e.prototype.generateAndInjectStyles=function(t,n,r){var i=this.componentId,o=[];if(this.baseStyle&&o.push(this.baseStyle.generateAndInjectStyles(t,n,r)),this.isStatic&&!r.hash)if(this.staticRulesId&&n.hasNameForId(i,this.staticRulesId))o.push(this.staticRulesId);else{var l=xn(this.rules,t,n,r).join(""),a=Ia(Hn(this.baseHash,l)>>>0);if(!n.hasNameForId(i,a)){var s=r(l,"."+a,void 0,i);n.insertRules(i,a,s)}o.push(a),this.staticRulesId=a}else{for(var u=this.rules.length,f=Hn(this.baseHash,r.hash),p="",h=0;h<u;h++){var g=this.rules[h];if(typeof g=="string")p+=g;else if(g){var v=xn(g,t,n,r),y=Array.isArray(v)?v.join(""):v;f=Hn(f,y+h),p+=y}}if(p){var x=Ia(f>>>0);if(!n.hasNameForId(i,x)){var d=r(p,"."+x,void 0,i);n.insertRules(i,x,d)}o.push(x)}}return o.join(" ")},e}(),wm=/^\s*\/\/.*$/gm,Am=[":","[",".","#"];function km(e){var t,n,r,i,o=e===void 0?en:e,l=o.options,a=l===void 0?en:l,s=o.plugins,u=s===void 0?vo:s,f=new V0(a),p=[],h=function(y){function x(d){if(d)try{y(d+"}")}catch{}}return function(d,c,m,w,C,T,L,R,B,U){switch(d){case 1:if(B===0&&c.charCodeAt(0)===64)return y(c+";"),"";break;case 2:if(R===0)return c+"/*|*/";break;case 3:switch(R){case 102:case 112:return y(m[0]+c),"";default:return c+(U===0?"/*|*/":"")}case-2:c.split("/*|*/}").forEach(x)}}}(function(y){p.push(y)}),g=function(y,x,d){return x===0&&Am.indexOf(d[n.length])!==-1||d.match(i)?y:"."+t};function v(y,x,d,c){c===void 0&&(c="&");var m=y.replace(wm,""),w=x&&d?d+" "+x+" { "+m+" }":m;return t=c,n=x,r=new RegExp("\\"+n+"\\b","g"),i=new RegExp("(\\"+n+"\\b){2,}"),f(d||!x?"":x,w)}return f.use([].concat(u,[function(y,x,d){y===2&&d.length&&d[0].lastIndexOf(n)>0&&(d[0]=d[0].replace(r,g))},h,function(y){if(y===-2){var x=p;return p=[],x}}])),v.hash=u.length?u.reduce(function(y,x){return x.name||ai(15),Hn(y,x.name)},5381).toString():"",v}var Dd=G.createContext();Dd.Consumer;var Fd=G.createContext(),xm=(Fd.Consumer,new wo),za=km();function $d(){return S.useContext(Dd)||xm}function Bd(){return S.useContext(Fd)||za}var Hd=function(){function e(t,n){var r=this;this.inject=function(i,o){o===void 0&&(o=za);var l=r.name+o.hash;i.hasNameForId(r.id,l)||i.insertRules(r.id,l,o(r.rules,l,"@keyframes"))},this.toString=function(){return ai(12,String(r.name))},this.name=t,this.id="sc-keyframes-"+t,this.rules=n}return e.prototype.getName=function(t){return t===void 0&&(t=za),this.name+t.hash},e}(),Sm=/([A-Z])/,Cm=/([A-Z])/g,Em=/^ms-/,Nm=function(e){return"-"+e.toLowerCase()};function sc(e){return Sm.test(e)?e.replace(Cm,Nm).replace(Em,"-ms-"):e}var uc=function(e){return e==null||e===!1||e===""};function xn(e,t,n,r){if(Array.isArray(e)){for(var i,o=[],l=0,a=e.length;l<a;l+=1)(i=xn(e[l],t,n,r))!==""&&(Array.isArray(i)?o.push.apply(o,i):o.push(i));return o}if(uc(e))return"";if(Us(e))return"."+e.styledComponentId;if(ei(e)){if(typeof(u=e)!="function"||u.prototype&&u.prototype.isReactComponent||!t)return e;var s=e(t);return xn(s,t,n,r)}var u;return e instanceof Hd?n?(e.inject(n,r),e.getName(r)):e:Ta(e)?function f(p,h){var g,v,y=[];for(var x in p)p.hasOwnProperty(x)&&!uc(p[x])&&(Array.isArray(p[x])&&p[x].isCss||ei(p[x])?y.push(sc(x)+":",p[x],";"):Ta(p[x])?y.push.apply(y,f(p[x],x)):y.push(sc(x)+": "+(g=x,(v=p[x])==null||typeof v=="boolean"||v===""?"":typeof v!="number"||v===0||g in W0?String(v).trim():v+"px")+";"));return h?[h+" {"].concat(y,["}"]):y}(e):e.toString()}var cc=function(e){return Array.isArray(e)&&(e.isCss=!0),e};function Ds(e){for(var t=arguments.length,n=new Array(t>1?t-1:0),r=1;r<t;r++)n[r-1]=arguments[r];return ei(e)||Ta(e)?cc(xn(ic(vo,[e].concat(n)))):n.length===0&&e.length===1&&typeof e[0]=="string"?e:cc(xn(ic(e,n)))}var Vd=function(e,t,n){return n===void 0&&(n=en),e.theme!==n.theme&&e.theme||t||n.theme},Rm=/[!"#$%&'()*+,./:;<=>?@[\\\]^`{|}~-]+/g,Pm=/(^-|-$)/g;function Pl(e){return e.replace(Rm,"-").replace(Pm,"")}var Fs=function(e){return Ia(Ud(e)>>>0)};function Ti(e){return typeof e=="string"&&!0}var La=function(e){return typeof e=="function"||typeof e=="object"&&e!==null&&!Array.isArray(e)},Tm=function(e){return e!=="__proto__"&&e!=="constructor"&&e!=="prototype"};function Im(e,t,n){var r=e[n];La(t)&&La(r)?Wd(r,t):e[n]=t}function Wd(e){for(var t=arguments.length,n=new Array(t>1?t-1:0),r=1;r<t;r++)n[r-1]=arguments[r];for(var i=0,o=n;i<o.length;i++){var l=o[i];if(La(l))for(var a in l)Tm(a)&&Im(e,l[a],a)}return e}var $s=G.createContext();$s.Consumer;var Tl={};function Qd(e,t,n){var r=Us(e),i=!Ti(e),o=t.attrs,l=o===void 0?vo:o,a=t.componentId,s=a===void 0?function(c,m){var w=typeof c!="string"?"sc":Pl(c);Tl[w]=(Tl[w]||0)+1;var C=w+"-"+Fs("5.3.6"+w+Tl[w]);return m?m+"-"+C:C}(t.displayName,t.parentComponentId):a,u=t.displayName,f=u===void 0?function(c){return Ti(c)?"styled."+c:"Styled("+oc(c)+")"}(e):u,p=t.displayName&&t.componentId?Pl(t.displayName)+"-"+t.componentId:t.componentId||s,h=r&&e.attrs?Array.prototype.concat(e.attrs,l).filter(Boolean):l,g=t.shouldForwardProp;r&&e.shouldForwardProp&&(g=t.shouldForwardProp?function(c,m,w){return e.shouldForwardProp(c,m,w)&&t.shouldForwardProp(c,m,w)}:e.shouldForwardProp);var v,y=new ym(n,p,r?e.componentStyle:void 0),x=y.isStatic&&l.length===0,d=function(c,m){return function(w,C,T,L){var R=w.attrs,B=w.componentStyle,U=w.defaultProps,oe=w.foldedComponentIds,Q=w.shouldForwardProp,te=w.styledComponentId,ne=w.target,ce=function(D,k,V){D===void 0&&(D=en);var P=xt({},k,{theme:D}),ge={};return V.forEach(function(Y){var J,$,Re,Be=Y;for(J in ei(Be)&&(Be=Be(P)),Be)P[J]=ge[J]=J==="className"?($=ge[J],Re=Be[J],$&&Re?$+" "+Re:$||Re):Be[J]}),[P,ge]}(Vd(C,S.useContext($s),U)||en,C,R),de=ce[0],ae=ce[1],N=function(D,k,V,P){var ge=$d(),Y=Bd(),J=k?D.generateAndInjectStyles(en,ge,Y):D.generateAndInjectStyles(V,ge,Y);return J}(B,L,de),b=T,j=ae.$as||C.$as||ae.as||C.as||ne,re=Ti(j),I=ae!==C?xt({},C,{},ae):C,O={};for(var _ in I)_[0]!=="$"&&_!=="as"&&(_==="forwardedAs"?O.as=I[_]:(Q?Q(_,ec,j):!re||ec(_))&&(O[_]=I[_]));return C.style&&ae.style!==C.style&&(O.style=xt({},C.style,{},ae.style)),O.className=Array.prototype.concat(oe,te,N!==te?N:null,C.className,ae.className).filter(Boolean).join(" "),O.ref=b,S.createElement(j,O)}(v,c,m,x)};return d.displayName=f,(v=G.forwardRef(d)).attrs=h,v.componentStyle=y,v.displayName=f,v.shouldForwardProp=g,v.foldedComponentIds=r?Array.prototype.concat(e.foldedComponentIds,e.styledComponentId):vo,v.styledComponentId=p,v.target=r?e.target:e,v.withComponent=function(c){var m=t.componentId,w=function(T,L){if(T==null)return{};var R,B,U={},oe=Object.keys(T);for(B=0;B<oe.length;B++)R=oe[B],L.indexOf(R)>=0||(U[R]=T[R]);return U}(t,["componentId"]),C=m&&m+"-"+(Ti(c)?c:Pl(oc(c)));return Qd(c,xt({},w,{attrs:h,componentId:C}),n)},Object.defineProperty(v,"defaultProps",{get:function(){return this._foldedDefaultProps},set:function(c){this._foldedDefaultProps=r?Wd({},e.defaultProps,c):c}}),v.toString=function(){return"."+v.styledComponentId},i&&tm(v,e,{attrs:!0,componentStyle:!0,displayName:!0,foldedComponentIds:!0,shouldForwardProp:!0,styledComponentId:!0,target:!0,withComponent:!0}),v}var Oa=function(e){return function t(n,r,i){if(i===void 0&&(i=en),!qr.isValidElementType(r))return ai(1,String(r));var o=function(){return n(r,i,Ds.apply(void 0,arguments))};return o.withConfig=function(l){return t(n,r,xt({},i,{},l))},o.attrs=function(l){return t(n,r,xt({},i,{attrs:Array.prototype.concat(i.attrs,l).filter(Boolean)}))},o}(Qd,e)};["a","abbr","address","area","article","aside","audio","b","base","bdi","bdo","big","blockquote","body","br","button","canvas","caption","cite","code","col","colgroup","data","datalist","dd","del","details","dfn","dialog","div","dl","dt","em","embed","fieldset","figcaption","figure","footer","form","h1","h2","h3","h4","h5","h6","head","header","hgroup","hr","html","i","iframe","img","input","ins","kbd","keygen","label","legend","li","link","main","map","mark","marquee","menu","menuitem","meta","meter","nav","noscript","object","ol","optgroup","option","output","p","param","picture","pre","progress","q","rp","rt","ruby","s","samp","script","section","select","small","source","span","strong","style","sub","summary","sup","table","tbody","td","textarea","tfoot","th","thead","time","title","tr","track","u","ul","var","video","wbr","circle","clipPath","defs","ellipse","foreignObject","g","image","line","linearGradient","marker","mask","path","pattern","polygon","polyline","radialGradient","rect","stop","svg","text","textPath","tspan"].forEach(function(e){Oa[e]=Oa(e)});var zm=function(){function e(n,r){this.rules=n,this.componentId=r,this.isStatic=jd(n),wo.registerId(this.componentId+1)}var t=e.prototype;return t.createStyles=function(n,r,i,o){var l=o(xn(this.rules,r,i,o).join(""),""),a=this.componentId+n;i.insertRules(a,a,l)},t.removeStyles=function(n,r){r.clearRules(this.componentId+n)},t.renderStyles=function(n,r,i,o){n>2&&wo.registerId(this.componentId+n),this.removeStyles(n,i),this.createStyles(n,r,i,o)},e}();function Lm(e){for(var t=arguments.length,n=new Array(t>1?t-1:0),r=1;r<t;r++)n[r-1]=arguments[r];var i=Ds.apply(void 0,[e].concat(n)),o="sc-global-"+Fs(JSON.stringify(i)),l=new zm(i,o);function a(u){var f=$d(),p=Bd(),h=S.useContext($s),g=S.useRef(f.allocateGSInstance(o)).current;return f.server&&s(g,u,f,h,p),S.useLayoutEffect(function(){if(!f.server)return s(g,u,f,h,p),function(){return l.removeStyles(g,f)}},[g,u,f,h,p]),null}function s(u,f,p,h,g){if(l.isStatic)l.renderStyles(u,rm,p,g);else{var v=xt({},f,{theme:Vd(f,h,a.defaultProps)});l.renderStyles(u,v,p,g)}}return G.memo(a)}function Bs(e){for(var t=arguments.length,n=new Array(t>1?t-1:0),r=1;r<t;r++)n[r-1]=arguments[r];var i=Ds.apply(void 0,[e].concat(n)).join(""),o=Fs(i);return new Hd(o,i)}const Xe=Oa,Om=Xe.div`
    width: 100vw;
    height: 100vh;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background: rgba(0, 0, 0, 0.9);

    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
`,_m=Xe.div`
    width: 162.6vh;
    margin: 1vh auto;

    display: flex;
    align-items: flex-end;
    justify-content: center;
    gap: 4.6vh;

    .title {
        p {
            text-shadow: 0vh 0.2671vh 0.7344vh
                rgba(0, 0, 0, 0.54);
            font-family: Meow Script;
            font-size: 5.036vh;
            font-style: normal;
            text-align: center;
            font-weight: 900;
            background: linear-gradient(
                179deg,
                rgba(255, 218, 0, 0) 0.59%,
                #ffda00 60.27%
            );
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            position: relative;
        }

        b {
            color: #fff;
            text-align: center;
            leading-trim: both;
            text-edge: cap;
            font-family: Big Shoulders Display;
            font-size: 9.42vh;
            font-style: normal;
            font-weight: 900;
            line-height: 40%;
            z-index: -1 !important;
        }
    }

    .buttons {
        width: 124.5vh;
        height: 7.4vh;
        border-radius: 1.0048vh;
        background: rgba(0, 0, 0, 0.25);
        display: flex;
        justify-content: space-around;
        a {
            text-decoration: none;
        }
        .button {
            color: #fff;
            leading-trim: both;
            text-edge: cap;
            font-family: Poppins;
            font-size: 2.2042vh;
            font-style: normal;
            font-weight: 600;
            line-height: normal;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            border: 0;
            background-color: transparent;

            &:hover {
                color: #ffda00;
                leading-trim: both;
                text-edge: cap;
                text-shadow: 0vh 0vh 5.3vh rgba(255, 218, 0, 0.51);
                font-family: Poppins;
                font-size: 2.2042vh;
                font-style: normal;
                font-weight: 600;
                line-height: normal;
            }
        }

        .selectedMenu {
            color: #e8ba1a;
            leading-trim: both;
            text-edge: cap;
            text-shadow: 0vh 0vh 5.3vh rgba(255, 218, 0, 0.51);
            font-family: Poppins;
            font-size: 2.2042vh;
            font-style: normal;
            font-weight: 600;
            line-height: normal;
        }
    }

    .invisible {
        opacity: 0.2;

        &:hover {
            cursor: not-allowed !important;
            color: #fff !important;
            leading-trim: both !important;
            text-edge: cap !important;
            font-family: Poppins !important;
            font-size: 2.2042vh !important;
            font-style: normal !important;
            font-weight: 600 !important;
            line-height: normal !important;
        }
    }
`;/**
 * @remix-run/router v1.9.0
 *
 * Copyright (c) Remix Software Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE.md file in the root directory of this source tree.
 *
 * @license MIT
 */function ti(){return ti=Object.assign?Object.assign.bind():function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e},ti.apply(this,arguments)}var Ht;(function(e){e.Pop="POP",e.Push="PUSH",e.Replace="REPLACE"})(Ht||(Ht={}));const fc="popstate";function Mm(e){e===void 0&&(e={});function t(i,o){let{pathname:l="/",search:a="",hash:s=""}=Nn(i.location.hash.substr(1));return!l.startsWith("/")&&!l.startsWith(".")&&(l="/"+l),_a("",{pathname:l,search:a,hash:s},o.state&&o.state.usr||null,o.state&&o.state.key||"default")}function n(i,o){let l=i.document.querySelector("base"),a="";if(l&&l.getAttribute("href")){let s=i.location.href,u=s.indexOf("#");a=u===-1?s:s.slice(0,u)}return a+"#"+(typeof o=="string"?o:Ao(o))}function r(i,o){Xo(i.pathname.charAt(0)==="/","relative pathnames are not supported in hash history.push("+JSON.stringify(o)+")")}return Um(t,n,r,e)}function ke(e,t){if(e===!1||e===null||typeof e>"u")throw new Error(t)}function Xo(e,t){if(!e){typeof console<"u"&&console.warn(t);try{throw new Error(t)}catch{}}}function bm(){return Math.random().toString(36).substr(2,8)}function dc(e,t){return{usr:e.state,key:e.key,idx:t}}function _a(e,t,n,r){return n===void 0&&(n=null),ti({pathname:typeof e=="string"?e:e.pathname,search:"",hash:""},typeof t=="string"?Nn(t):t,{state:n,key:t&&t.key||r||bm()})}function Ao(e){let{pathname:t="/",search:n="",hash:r=""}=e;return n&&n!=="?"&&(t+=n.charAt(0)==="?"?n:"?"+n),r&&r!=="#"&&(t+=r.charAt(0)==="#"?r:"#"+r),t}function Nn(e){let t={};if(e){let n=e.indexOf("#");n>=0&&(t.hash=e.substr(n),e=e.substr(0,n));let r=e.indexOf("?");r>=0&&(t.search=e.substr(r),e=e.substr(0,r)),e&&(t.pathname=e)}return t}function Um(e,t,n,r){r===void 0&&(r={});let{window:i=document.defaultView,v5Compat:o=!1}=r,l=i.history,a=Ht.Pop,s=null,u=f();u==null&&(u=0,l.replaceState(ti({},l.state,{idx:u}),""));function f(){return(l.state||{idx:null}).idx}function p(){a=Ht.Pop;let x=f(),d=x==null?null:x-u;u=x,s&&s({action:a,location:y.location,delta:d})}function h(x,d){a=Ht.Push;let c=_a(y.location,x,d);n&&n(c,x),u=f()+1;let m=dc(c,u),w=y.createHref(c);try{l.pushState(m,"",w)}catch(C){if(C instanceof DOMException&&C.name==="DataCloneError")throw C;i.location.assign(w)}o&&s&&s({action:a,location:y.location,delta:1})}function g(x,d){a=Ht.Replace;let c=_a(y.location,x,d);n&&n(c,x),u=f();let m=dc(c,u),w=y.createHref(c);l.replaceState(m,"",w),o&&s&&s({action:a,location:y.location,delta:0})}function v(x){let d=i.location.origin!=="null"?i.location.origin:i.location.href,c=typeof x=="string"?x:Ao(x);return ke(d,"No window.location.(origin|href) available to create URL for href: "+c),new URL(c,d)}let y={get action(){return a},get location(){return e(i,l)},listen(x){if(s)throw new Error("A history only accepts one active listener");return i.addEventListener(fc,p),s=x,()=>{i.removeEventListener(fc,p),s=null}},createHref(x){return t(i,x)},createURL:v,encodeLocation(x){let d=v(x);return{pathname:d.pathname,search:d.search,hash:d.hash}},push:h,replace:g,go(x){return l.go(x)}};return y}var pc;(function(e){e.data="data",e.deferred="deferred",e.redirect="redirect",e.error="error"})(pc||(pc={}));function jm(e,t,n){n===void 0&&(n="/");let r=typeof t=="string"?Nn(t):t,i=Hs(r.pathname||"/",n);if(i==null)return null;let o=Kd(e);Dm(o);let l=null;for(let a=0;l==null&&a<o.length;++a)l=Gm(o[a],Jm(i));return l}function Kd(e,t,n,r){t===void 0&&(t=[]),n===void 0&&(n=[]),r===void 0&&(r="");let i=(o,l,a)=>{let s={relativePath:a===void 0?o.path||"":a,caseSensitive:o.caseSensitive===!0,childrenIndex:l,route:o};s.relativePath.startsWith("/")&&(ke(s.relativePath.startsWith(r),'Absolute route path "'+s.relativePath+'" nested under path '+('"'+r+'" is not valid. An absolute child route path ')+"must start with the combined path of all its parent routes."),s.relativePath=s.relativePath.slice(r.length));let u=tn([r,s.relativePath]),f=n.concat(s);o.children&&o.children.length>0&&(ke(o.index!==!0,"Index routes must not have child routes. Please remove "+('all child routes from route path "'+u+'".')),Kd(o.children,t,f,u)),!(o.path==null&&!o.index)&&t.push({path:u,score:Qm(u,o.index),routesMeta:f})};return e.forEach((o,l)=>{var a;if(o.path===""||!((a=o.path)!=null&&a.includes("?")))i(o,l);else for(let s of Gd(o.path))i(o,l,s)}),t}function Gd(e){let t=e.split("/");if(t.length===0)return[];let[n,...r]=t,i=n.endsWith("?"),o=n.replace(/\?$/,"");if(r.length===0)return i?[o,""]:[o];let l=Gd(r.join("/")),a=[];return a.push(...l.map(s=>s===""?o:[o,s].join("/"))),i&&a.push(...l),a.map(s=>e.startsWith("/")&&s===""?"/":s)}function Dm(e){e.sort((t,n)=>t.score!==n.score?n.score-t.score:Km(t.routesMeta.map(r=>r.childrenIndex),n.routesMeta.map(r=>r.childrenIndex)))}const Fm=/^:\w+$/,$m=3,Bm=2,Hm=1,Vm=10,Wm=-2,hc=e=>e==="*";function Qm(e,t){let n=e.split("/"),r=n.length;return n.some(hc)&&(r+=Wm),t&&(r+=Bm),n.filter(i=>!hc(i)).reduce((i,o)=>i+(Fm.test(o)?$m:o===""?Hm:Vm),r)}function Km(e,t){return e.length===t.length&&e.slice(0,-1).every((r,i)=>r===t[i])?e[e.length-1]-t[t.length-1]:0}function Gm(e,t){let{routesMeta:n}=e,r={},i="/",o=[];for(let l=0;l<n.length;++l){let a=n[l],s=l===n.length-1,u=i==="/"?t:t.slice(i.length)||"/",f=Ym({path:a.relativePath,caseSensitive:a.caseSensitive,end:s},u);if(!f)return null;Object.assign(r,f.params);let p=a.route;o.push({params:r,pathname:tn([i,f.pathname]),pathnameBase:tg(tn([i,f.pathnameBase])),route:p}),f.pathnameBase!=="/"&&(i=tn([i,f.pathnameBase]))}return o}function Ym(e,t){typeof e=="string"&&(e={path:e,caseSensitive:!1,end:!0});let[n,r]=Xm(e.path,e.caseSensitive,e.end),i=t.match(n);if(!i)return null;let o=i[0],l=o.replace(/(.)\/+$/,"$1"),a=i.slice(1);return{params:r.reduce((u,f,p)=>{if(f==="*"){let h=a[p]||"";l=o.slice(0,o.length-h.length).replace(/(.)\/+$/,"$1")}return u[f]=Zm(a[p]||"",f),u},{}),pathname:o,pathnameBase:l,pattern:e}}function Xm(e,t,n){t===void 0&&(t=!1),n===void 0&&(n=!0),Xo(e==="*"||!e.endsWith("*")||e.endsWith("/*"),'Route path "'+e+'" will be treated as if it were '+('"'+e.replace(/\*$/,"/*")+'" because the `*` character must ')+"always follow a `/` in the pattern. To get rid of this warning, "+('please change the route path to "'+e.replace(/\*$/,"/*")+'".'));let r=[],i="^"+e.replace(/\/*\*?$/,"").replace(/^\/*/,"/").replace(/[\\.*+^$?{}|()[\]]/g,"\\$&").replace(/\/:(\w+)/g,(l,a)=>(r.push(a),"/([^\\/]+)"));return e.endsWith("*")?(r.push("*"),i+=e==="*"||e==="/*"?"(.*)$":"(?:\\/(.+)|\\/*)$"):n?i+="\\/*$":e!==""&&e!=="/"&&(i+="(?:(?=\\/|$))"),[new RegExp(i,t?void 0:"i"),r]}function Jm(e){try{return decodeURI(e)}catch(t){return Xo(!1,'The URL path "'+e+'" could not be decoded because it is is a malformed URL segment. This is probably due to a bad percent '+("encoding ("+t+").")),e}}function Zm(e,t){try{return decodeURIComponent(e)}catch(n){return Xo(!1,'The value for the URL param "'+t+'" will not be decoded because'+(' the string "'+e+'" is a malformed URL segment. This is probably')+(" due to a bad percent encoding ("+n+").")),e}}function Hs(e,t){if(t==="/")return e;if(!e.toLowerCase().startsWith(t.toLowerCase()))return null;let n=t.endsWith("/")?t.length-1:t.length,r=e.charAt(n);return r&&r!=="/"?null:e.slice(n)||"/"}function qm(e,t){t===void 0&&(t="/");let{pathname:n,search:r="",hash:i=""}=typeof e=="string"?Nn(e):e;return{pathname:n?n.startsWith("/")?n:eg(n,t):t,search:ng(r),hash:rg(i)}}function eg(e,t){let n=t.replace(/\/+$/,"").split("/");return e.split("/").forEach(i=>{i===".."?n.length>1&&n.pop():i!=="."&&n.push(i)}),n.length>1?n.join("/"):"/"}function Il(e,t,n,r){return"Cannot include a '"+e+"' character in a manually specified "+("`to."+t+"` field ["+JSON.stringify(r)+"].  Please separate it out to the ")+("`to."+n+"` field. Alternatively you may provide the full path as ")+'a string in <Link to="..."> and the router will parse it for you.'}function Yd(e){return e.filter((t,n)=>n===0||t.route.path&&t.route.path.length>0)}function Xd(e,t,n,r){r===void 0&&(r=!1);let i;typeof e=="string"?i=Nn(e):(i=ti({},e),ke(!i.pathname||!i.pathname.includes("?"),Il("?","pathname","search",i)),ke(!i.pathname||!i.pathname.includes("#"),Il("#","pathname","hash",i)),ke(!i.search||!i.search.includes("#"),Il("#","search","hash",i)));let o=e===""||i.pathname==="",l=o?"/":i.pathname,a;if(r||l==null)a=n;else{let p=t.length-1;if(l.startsWith("..")){let h=l.split("/");for(;h[0]==="..";)h.shift(),p-=1;i.pathname=h.join("/")}a=p>=0?t[p]:"/"}let s=qm(i,a),u=l&&l!=="/"&&l.endsWith("/"),f=(o||l===".")&&n.endsWith("/");return!s.pathname.endsWith("/")&&(u||f)&&(s.pathname+="/"),s}const tn=e=>e.join("/").replace(/\/\/+/g,"/"),tg=e=>e.replace(/\/+$/,"").replace(/^\/*/,"/"),ng=e=>!e||e==="?"?"":e.startsWith("?")?e:"?"+e,rg=e=>!e||e==="#"?"":e.startsWith("#")?e:"#"+e;function ig(e){return e!=null&&typeof e.status=="number"&&typeof e.statusText=="string"&&typeof e.internal=="boolean"&&"data"in e}const og=["post","put","patch","delete"];[...og];/**
 * React Router v6.16.0
 *
 * Copyright (c) Remix Software Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE.md file in the root directory of this source tree.
 *
 * @license MIT
 */function ko(){return ko=Object.assign?Object.assign.bind():function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e},ko.apply(this,arguments)}const Vs=S.createContext(null),lg=S.createContext(null),ar=S.createContext(null),Jo=S.createContext(null),Rn=S.createContext({outlet:null,matches:[],isDataRoute:!1}),Jd=S.createContext(null);function ag(e,t){let{relative:n}=t===void 0?{}:t;si()||ke(!1);let{basename:r,navigator:i}=S.useContext(ar),{hash:o,pathname:l,search:a}=qd(e,{relative:n}),s=l;return r!=="/"&&(s=l==="/"?r:tn([r,l])),i.createHref({pathname:s,search:a,hash:o})}function si(){return S.useContext(Jo)!=null}function ui(){return si()||ke(!1),S.useContext(Jo).location}function Zd(e){S.useContext(ar).static||S.useLayoutEffect(e)}function sg(){let{isDataRoute:e}=S.useContext(Rn);return e?kg():ug()}function ug(){si()||ke(!1);let e=S.useContext(Vs),{basename:t,navigator:n}=S.useContext(ar),{matches:r}=S.useContext(Rn),{pathname:i}=ui(),o=JSON.stringify(Yd(r).map(s=>s.pathnameBase)),l=S.useRef(!1);return Zd(()=>{l.current=!0}),S.useCallback(function(s,u){if(u===void 0&&(u={}),!l.current)return;if(typeof s=="number"){n.go(s);return}let f=Xd(s,JSON.parse(o),i,u.relative==="path");e==null&&t!=="/"&&(f.pathname=f.pathname==="/"?t:tn([t,f.pathname])),(u.replace?n.replace:n.push)(f,u.state,u)},[t,n,o,i,e])}function qd(e,t){let{relative:n}=t===void 0?{}:t,{matches:r}=S.useContext(Rn),{pathname:i}=ui(),o=JSON.stringify(Yd(r).map(l=>l.pathnameBase));return S.useMemo(()=>Xd(e,JSON.parse(o),i,n==="path"),[e,o,i,n])}function cg(e,t){return fg(e,t)}function fg(e,t,n){si()||ke(!1);let{navigator:r}=S.useContext(ar),{matches:i}=S.useContext(Rn),o=i[i.length-1],l=o?o.params:{};o&&o.pathname;let a=o?o.pathnameBase:"/";o&&o.route;let s=ui(),u;if(t){var f;let y=typeof t=="string"?Nn(t):t;a==="/"||(f=y.pathname)!=null&&f.startsWith(a)||ke(!1),u=y}else u=s;let p=u.pathname||"/",h=a==="/"?p:p.slice(a.length)||"/",g=jm(e,{pathname:h}),v=gg(g&&g.map(y=>Object.assign({},y,{params:Object.assign({},l,y.params),pathname:tn([a,r.encodeLocation?r.encodeLocation(y.pathname).pathname:y.pathname]),pathnameBase:y.pathnameBase==="/"?a:tn([a,r.encodeLocation?r.encodeLocation(y.pathnameBase).pathname:y.pathnameBase])})),i,n);return t&&v?S.createElement(Jo.Provider,{value:{location:ko({pathname:"/",search:"",hash:"",state:null,key:"default"},u),navigationType:Ht.Pop}},v):v}function dg(){let e=Ag(),t=ig(e)?e.status+" "+e.statusText:e instanceof Error?e.message:JSON.stringify(e),n=e instanceof Error?e.stack:null,i={padding:"0.5rem",backgroundColor:"rgba(200,200,200, 0.5)"},o=null;return S.createElement(S.Fragment,null,S.createElement("h2",null,"Unexpected Application Error!"),S.createElement("h3",{style:{fontStyle:"italic"}},t),n?S.createElement("pre",{style:i},n):null,o)}const pg=S.createElement(dg,null);class hg extends S.Component{constructor(t){super(t),this.state={location:t.location,revalidation:t.revalidation,error:t.error}}static getDerivedStateFromError(t){return{error:t}}static getDerivedStateFromProps(t,n){return n.location!==t.location||n.revalidation!=="idle"&&t.revalidation==="idle"?{error:t.error,location:t.location,revalidation:t.revalidation}:{error:t.error||n.error,location:n.location,revalidation:t.revalidation||n.revalidation}}componentDidCatch(t,n){console.error("React Router caught the following error during render",t,n)}render(){return this.state.error?S.createElement(Rn.Provider,{value:this.props.routeContext},S.createElement(Jd.Provider,{value:this.state.error,children:this.props.component})):this.props.children}}function mg(e){let{routeContext:t,match:n,children:r}=e,i=S.useContext(Vs);return i&&i.static&&i.staticContext&&(n.route.errorElement||n.route.ErrorBoundary)&&(i.staticContext._deepestRenderedBoundaryId=n.route.id),S.createElement(Rn.Provider,{value:t},r)}function gg(e,t,n){var r;if(t===void 0&&(t=[]),n===void 0&&(n=null),e==null){var i;if((i=n)!=null&&i.errors)e=n.matches;else return null}let o=e,l=(r=n)==null?void 0:r.errors;if(l!=null){let a=o.findIndex(s=>s.route.id&&(l==null?void 0:l[s.route.id]));a>=0||ke(!1),o=o.slice(0,Math.min(o.length,a+1))}return o.reduceRight((a,s,u)=>{let f=s.route.id?l==null?void 0:l[s.route.id]:null,p=null;n&&(p=s.route.errorElement||pg);let h=t.concat(o.slice(0,u+1)),g=()=>{let v;return f?v=p:s.route.Component?v=S.createElement(s.route.Component,null):s.route.element?v=s.route.element:v=a,S.createElement(mg,{match:s,routeContext:{outlet:a,matches:h,isDataRoute:n!=null},children:v})};return n&&(s.route.ErrorBoundary||s.route.errorElement||u===0)?S.createElement(hg,{location:n.location,revalidation:n.revalidation,component:p,error:f,children:g(),routeContext:{outlet:null,matches:h,isDataRoute:!0}}):g()},null)}var ep=function(e){return e.UseBlocker="useBlocker",e.UseRevalidator="useRevalidator",e.UseNavigateStable="useNavigate",e}(ep||{}),xo=function(e){return e.UseBlocker="useBlocker",e.UseLoaderData="useLoaderData",e.UseActionData="useActionData",e.UseRouteError="useRouteError",e.UseNavigation="useNavigation",e.UseRouteLoaderData="useRouteLoaderData",e.UseMatches="useMatches",e.UseRevalidator="useRevalidator",e.UseNavigateStable="useNavigate",e.UseRouteId="useRouteId",e}(xo||{});function vg(e){let t=S.useContext(Vs);return t||ke(!1),t}function yg(e){let t=S.useContext(lg);return t||ke(!1),t}function wg(e){let t=S.useContext(Rn);return t||ke(!1),t}function tp(e){let t=wg(),n=t.matches[t.matches.length-1];return n.route.id||ke(!1),n.route.id}function Ag(){var e;let t=S.useContext(Jd),n=yg(xo.UseRouteError),r=tp(xo.UseRouteError);return t||((e=n.errors)==null?void 0:e[r])}function kg(){let{router:e}=vg(ep.UseNavigateStable),t=tp(xo.UseNavigateStable),n=S.useRef(!1);return Zd(()=>{n.current=!0}),S.useCallback(function(i,o){o===void 0&&(o={}),n.current&&(typeof i=="number"?e.navigate(i):e.navigate(i,ko({fromRouteId:t},o)))},[e,t])}function cn(e){ke(!1)}function xg(e){let{basename:t="/",children:n=null,location:r,navigationType:i=Ht.Pop,navigator:o,static:l=!1}=e;si()&&ke(!1);let a=t.replace(/^\/*/,"/"),s=S.useMemo(()=>({basename:a,navigator:o,static:l}),[a,o,l]);typeof r=="string"&&(r=Nn(r));let{pathname:u="/",search:f="",hash:p="",state:h=null,key:g="default"}=r,v=S.useMemo(()=>{let y=Hs(u,a);return y==null?null:{location:{pathname:y,search:f,hash:p,state:h,key:g},navigationType:i}},[a,u,f,p,h,g,i]);return v==null?null:S.createElement(ar.Provider,{value:s},S.createElement(Jo.Provider,{children:n,value:v}))}function Sg(e){let{children:t,location:n}=e;return cg(Ma(t),n)}new Promise(()=>{});function Ma(e,t){t===void 0&&(t=[]);let n=[];return S.Children.forEach(e,(r,i)=>{if(!S.isValidElement(r))return;let o=[...t,i];if(r.type===S.Fragment){n.push.apply(n,Ma(r.props.children,o));return}r.type!==cn&&ke(!1),!r.props.index||!r.props.children||ke(!1);let l={id:r.props.id||o.join("-"),caseSensitive:r.props.caseSensitive,element:r.props.element,Component:r.props.Component,index:r.props.index,path:r.props.path,loader:r.props.loader,action:r.props.action,errorElement:r.props.errorElement,ErrorBoundary:r.props.ErrorBoundary,hasErrorBoundary:r.props.ErrorBoundary!=null||r.props.errorElement!=null,shouldRevalidate:r.props.shouldRevalidate,handle:r.props.handle,lazy:r.props.lazy};r.props.children&&(l.children=Ma(r.props.children,o)),n.push(l)}),n}/**
 * React Router DOM v6.16.0
 *
 * Copyright (c) Remix Software Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE.md file in the root directory of this source tree.
 *
 * @license MIT
 */function ba(){return ba=Object.assign?Object.assign.bind():function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e},ba.apply(this,arguments)}function Cg(e,t){if(e==null)return{};var n={},r=Object.keys(e),i,o;for(o=0;o<r.length;o++)i=r[o],!(t.indexOf(i)>=0)&&(n[i]=e[i]);return n}function Eg(e){return!!(e.metaKey||e.altKey||e.ctrlKey||e.shiftKey)}function Ng(e,t){return e.button===0&&(!t||t==="_self")&&!Eg(e)}const Rg=["onClick","relative","reloadDocument","replace","state","target","to","preventScrollReset"],Pg="startTransition",mc=Ep[Pg];function Tg(e){let{basename:t,children:n,future:r,window:i}=e,o=S.useRef();o.current==null&&(o.current=Mm({window:i,v5Compat:!0}));let l=o.current,[a,s]=S.useState({action:l.action,location:l.location}),{v7_startTransition:u}=r||{},f=S.useCallback(p=>{u&&mc?mc(()=>s(p)):s(p)},[s,u]);return S.useLayoutEffect(()=>l.listen(f),[l,f]),S.createElement(xg,{basename:t,children:n,location:a.location,navigationType:a.action,navigator:l})}const Ig=typeof window<"u"&&typeof window.document<"u"&&typeof window.document.createElement<"u",zg=/^(?:[a-z][a-z0-9+.-]*:|\/\/)/i,In=S.forwardRef(function(t,n){let{onClick:r,relative:i,reloadDocument:o,replace:l,state:a,target:s,to:u,preventScrollReset:f}=t,p=Cg(t,Rg),{basename:h}=S.useContext(ar),g,v=!1;if(typeof u=="string"&&zg.test(u)&&(g=u,Ig))try{let c=new URL(window.location.href),m=u.startsWith("//")?new URL(c.protocol+u):new URL(u),w=Hs(m.pathname,h);m.origin===c.origin&&w!=null?u=w+m.search+m.hash:v=!0}catch{}let y=ag(u,{relative:i}),x=Lg(u,{replace:l,state:a,target:s,preventScrollReset:f,relative:i});function d(c){r&&r(c),c.defaultPrevented||x(c)}return S.createElement("a",ba({},p,{href:g||y,onClick:v||o?r:d,ref:n,target:s}))});var gc;(function(e){e.UseScrollRestoration="useScrollRestoration",e.UseSubmit="useSubmit",e.UseSubmitFetcher="useSubmitFetcher",e.UseFetcher="useFetcher"})(gc||(gc={}));var vc;(function(e){e.UseFetchers="useFetchers",e.UseScrollRestoration="useScrollRestoration"})(vc||(vc={}));function Lg(e,t){let{target:n,replace:r,state:i,preventScrollReset:o,relative:l}=t===void 0?{}:t,a=sg(),s=ui(),u=qd(e,{relative:l});return S.useCallback(f=>{if(Ng(f,n)){f.preventDefault();let p=r!==void 0?r:Ao(s)===Ao(u);a(e,{replace:p,state:i,preventScrollReset:o,relative:l})}},[s,a,u,r,i,n,e,o,l])}const Og=()=>{const e=ui();return z(_m,{children:[z("div",{className:"title",children:[A("p",{children:"Sistema de"}),A("b",{children:"CRAFT"})]}),z("div",{className:"buttons",children:[A(In,{to:"/",className:e.pathname==="/"?"button selectedMenu":"button",children:"INICIO"}),A(In,{to:"/product",className:e.pathname==="/product"?"button selectedMenu":"button",children:"PRODUÇÃO"}),A(In,{to:"/storage",className:e.pathname==="/storage"?"button selectedMenu":"button",children:"ARMAZEM"}),A(In,{to:"/collect",className:e.pathname==="/collect"?"button selectedMenu":"button",children:"COLETAR"}),A(In,{to:"/delivery",className:e.pathname==="/delivery"?"button selectedMenu":"button",children:"ENTREGAR"}),A(In,{to:e.pathname,className:e.pathname==="/ranking"?"button selectedMenu":"button invisible",children:"RANKING"})]})]})},_g=Xe.div`
    display: flex;
    gap: 2.5rem;

    .manufacturable {
        display: flex;
        align-items: flex-start;
        flex-direction: column;

        .top {
            display: flex;
            align-items: center;
            justify-content: center;

            gap: 1.1vh;

            img {
                width: 7.8748vh;
            }

            h1 {
                font-size: 3.07vh;
                font-style: normal;
                font-weight: 700;
                line-height: normal;
                background: linear-gradient(
                    90deg,
                    #fff 0%,
                    rgba(255, 255, 255, 0) 154.87%
                );
                background-clip: text;
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
            }
        }

        .list {
            width: 41.2vh;
            height: 70.9vh;
            overflow: auto;
            padding-top: .1vh;

            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-template-rows: 1fr 1fr 1fr 1fr;

            .item {
                width: 19.6vh;
                height: 17.1vh;
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 1vh;
                margin-bottom: 1vh;
                transition: all 0.2s ease-in-out;

                .left {
                    width: 19.6vh;
                    height: 10.3vh;
                    border-radius: 1vh;
                    background: radial-gradient(
                            60.71% 212.5% at 50% 50%,
                            rgba(61, 61, 61, 0.8) 0%,
                            rgba(35, 35, 35, 0.8) 100%
                        ),
                        rgba(0, 0, 0, 0.75);
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    gap: 4vh;
                    position: relative;
                    transition: all 0.2s ease-in-out;

                    .engrenagem {
                        width: 9vh;
                        position: absolute;
                        z-index: 2;
                        opacity: 0.2;
                        transition: all 0.2s ease-in-out;
                    }

                    .imgItem {
                        width: 11.6vh;
                        object-fit: contain;
                        height: 11.6vh;
                        z-index: 3;
                    }
                }

                .timing {
                    width: 19.6vh;
                    height: 5.1vh;
                    border-radius: 1vh;
                    border: 0.1vh solid rgba(255, 255, 255, 0.1);
                    background: radial-gradient(
                            55.5% 100.01% at 50% 50%,
                            rgba(0, 0, 0, 0.15) 0%,
                            rgba(0, 0, 0, 0) 100%
                        ),
                        rgba(11, 11, 11, 0.55);
                    color: #fff;
                    text-align: center;
                    font-size: 2.1469vh;
                    font-style: normal;
                    font-weight: 400;
                    line-height: normal;

                    display: flex;
                    align-items: center;
                    justify-content: center;
                    gap: 1vh;
                    img {
                        width: 2.5941vh;
                    }
                }

                &:hover .left {
                    border-radius: 1vh;
                    background: linear-gradient(
                        270deg,
                        #ffda00 -2.56%,
                        rgba(255, 218, 0, 0) 189.13%
                    );
                    cursor: pointer;

                    .engrenagem {
                        opacity: 1;
                        transform: scale(1.2) rotate(90deg);
                    }
                }
            }

            .selected .left {
                background: linear-gradient(
                    270deg,
                    #e8ba1a -2.56%,
                    rgba(255, 218, 0, 0) 189.13%
                );
            }
        }
    }

    .itemSelectedImage {
        height: 19.94vh;
    }
`,Mg="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFUAAAATCAYAAADh9EErAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAOxSURBVHgBxVhLSFVRFF0vHhGRKZp9pI8TG0Q0alANSokKo4+UBn2IPgQFDWvSJGgQBEUETaKxISpRUZBhKUGIGAQNGhSElZ9SK9MI0nqvtb3n8s79HHOL17dgs+479511991nn3P2uSnkEdlstohU5LqfSqW6oddcSCqMu2V4hLoj0GkWkAoceoJRav70f6SRJ9DRclIbTTgbY9201dCjlbacljEGw6L5iXaIpgoqcZG22fItE/L1AC3/QSWO0lbQ/iDqpPy+BCU4UHWkJbTfiA6SaDYxo3oUkqK5hbSJNo5oUIVbqNlv90khD6CjK0lvER11//ojHV0HJaj7nFSG+IzqoeZ2KEHNRngDFacpwTxP3S92n3xl6gV4Ix+XocJnoARf/ixpcYyuf30TSlBzB6nE4atYSzigglkPqslSWYNcL99AR18oJEVTsnO3pQkEp2gfNR9Aj8O0sZCerzlAzfq4TvnI1HMIrk/hKXUNepyGl6VjDs1bUIIDtYdUjNya7w+Wr13v6pu2RCpIvYz+LyQEPmMjaT+iGeVfN09jI1lGqkYuoOFMfUXNR1CAmjJAu+CeTZKl7db/y+3yL20a15DEKnjdnmBgr8Ib+b8hR2H4BvQ4CS+gto7PYpehx0549bOd+XZQm/w/Ml7rSeXkUsatS9rSVkAF82mVbOvGzKMSXgklTs2xHE0Zvk8r5LMLFZry4jWIL5+EO2nF1CxWaMrhoQ7xtbPYe9pXEzd5fpnpt4ptcmDpms019QTcNWkf7R70OIXo+hyoS6FHdUgTCGZ/4yR9J/6fZmTfSIThZatM+xmf/tTfS5pLG0V8aXJ9Gjv+NpKsp8MI7vQw/JSaHVCAmovgncaGEBwcX7eDmp2hPhPTn9bNey+lbSJTTWBldHoTCKhMj3BG2UHo5zMfQo+DcK95A7QG6FHr0IThyIYngeQ7DpI/+G1p6+Y7JANZ9EuRC2omxLehBF+iCt56Nm6aMiHdZ3yfQShATTnBrYW73Oui5re4vnZABYmuqXR0Kek43Kenz3ToMfSohfuUI+VOM/SoCWna2hLMJ1MVSnqjOgb3y0vbFSjBgdqHYLkDBDP1LpQw6+ICREsz30/J0u9T1UssqHRUPkJsRS6o4RNJKx19DQXMRmJ/MQoX5kPaDc+gCu41f5iabQqtRDP1COIdFUjxfwd6yNHRX0vDAyWa6vM9B2oDvCx1zShVQAWJffozRz33g1OpAeg1Sya77dpI/qM5jzQv3OxfUPMHlPgHRzwl27p1VR0AAAAASUVORK5CYII=",bg="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAK4AAAAyCAYAAADFqODWAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAKKSURBVHgB7dk9aBRRFMXxuxokoEhU1CgIC6kFsbKxUkQtFMFKQUuxEkSwFLSyVistRYxBqyiIRQoJpLKwMWgTC00UI2n8As16LjPLzCT7Xiblhf8PLnc3nGzxODs7y3YMrfV6vQNaV8qny5q5TqdzK5Hdp3XVH/ZH2WuZ175R5pbL/UT5D4aBhgzrMaHxQnq5/mkuZ7Je8NO17NNUUKU9oXW0zPq8obR5FLclleuc1i7NLyuK6Ffbh4nsXq2Tmp9l9pPmbiK7Wet87XW9uLcNWRS3Pf/Y7xdxrXJdsmYRn6nknxPZU5qtmh9ldkrZr4YGvcG7WsM6m1l/TnFb0KGd1dphRXG9XDM6wIlE9qDWESuK6MWdV/ZBIrtT65g13xDjhoaytN3ysXl5h8ovHMOGlN2a6yv+Nq5zO5TI39Rssup+dTqTPWPF7Uc/+1YzpvyYoa7ez1Gdz1L/ijurFi8ZVtEh+cf+Rs03K8o1qbOaTGT9C9YfzbwVV9Avyt5LZLdrjWg+ltlFzR3lFw0N9SuuLOiMFrhVyNCBjWpdtOr+0+d+5l/8Ctq/nfAyPspkj6943WlKO5jOZc5vEYx73NYuWFVEn5f+bh8U1MEe1tpSy79T9nUiu0drfy37XdlXhiQvb/05xc37q3lu1Y8CjzPZbZopq35EeJHJdjUztex7w/r4lzPNiAGBbDAgIIqLkCguQqK4CIniIiSKi5AoLkKiuAiJ4iIkiouQKC5CorgIieIiJIqLkCguQqK4CIniIiSKi5AoLkKiuAiJ4iIkiouQKC5CorgIieIiJIqLkCguQqK4CIniIiSKi5AoLkKiuAiJ4iIkiouQKC5CorgIieIiJIqLkLy4vw0I5j+AUtSc15thEwAAAABJRU5ErkJggg==",Ug="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABCgAAAASCAYAAACZxu8kAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAQ/SURBVHgB7d07qBxVHMfx38piEZBciI8gGm1sRAQREVFhRYMGfEWEFGphQG0EEbEQwcZCC0WC2IggIgpKJIWiRnyEG+zEB4iI1cVHfOWiRcg7d/L/Z85kz8yd2eQ/CewU3w8cztzdy49tz48z54wEAAAAAADOSFEU39m0UP3ZGEuj0WijAizvUps+aOSspK993m6Z2xRgmRObnkpZx7LfupLmNy3zY83JWAAAAAAAoDdb+D9n09WaFgi++M+Lha2Ke9LGek3Lg7yk8Hm74p6wsa4j7895lhOOggIAAAAAgJ6snLjMpgdtHNbqnRO++H/HFv67A5GeeYlN97ZkVmXCDsv8IxDpmZtUlhOH00f5bowTuyc0ZxQUAAAAAAD094yNi20cUb1EqJ5fVNwLKW+lJdOLidcU91DKVMrLM/+ywuMzzRkFBQAAAAAAPRRFscGmLSp3JbS9ivGeLfx/DUR6pu+cuCbLlKaFgvPdE3sUYJmbNd090bbL420NAAUFAAAAAAD9PK36zonmaxMvK+5R1XdP5GOPlROvB7K8nLjIprtbMqvf+qNlfqkBOFlQ2I9e47P9sP0CAAAAAACd0i0b96l+pkP+OsY2W1//pgDLvNOmC1Tf6ZCXCqFyIvHMhRmZr2pOmj3EOPtwkp53UVIAAAAAADDTSzaOqv2ciN/V75aNh9V9MKbfsvFJIMvX9xfadIfaz8fwsWiZ/2oO2nqIcfbhmvR/E/tsSQAAAAAAoM3Exg3p+RyVC3+fq4X/hzbW2tp6rU6f37KxIT1XRUL+vGh5VyrmfpVr/WbhUeX+3CPzbLlc9R5iF2dQAAAAAAAQs1XTXQnN4bds7FSMnxOxUeWOjLbXMH6xsaiY821cO+N3fmNjrwZk7NsovKlQ2lpheMUDAAAAAIAWtn6+x6ZzbexT+86EV2xN/ZMCLHNTevxf9QM3q+xnLfMfBVjm4yoLiLzsqOZlG29Y5rLmJL25MUl/lq94+FNWUnBIJgAAAAAA3R7R6jMdlJ79lo2PFJDOibhF3YdYftWjnPBrSq/KMptnT3w9z3LCtfUQ4/xLAQAAAACAVrag9nKiumXDNRf+zytui+pXgDYz31fcZtVf7cgzl239/6kGoNlDcAYFAAAAAACnYOXEeptu17RMOPGxpq9j7LQF9/cKsEwvO25WWXg0iwn/e3f0lg3LvM6m81QvPfKSYhDlRBsKCgAAAAAATs2vAPWDJ/OCIj8r4i3FPabV14pWZYIXEzsUd5tWv4JSzf9Z4fGtBoqCAgAAAACAGYqi8Fs2blX3wv9zW/j/HYj0zJtsuiJlStOyo3r23ROhWzYs80aVuyeapUf1O7/QgFFQAAAAAAAw2wPqXvT7eFdxd6n7YMy9PQ7bXLDperWfZ+GWLPMHDdhIAAAAAACgU7ppo1P0lo2UuW7G1/st84DimQvNj7Lng5Z5SAN2HMjdFA8qncohAAAAAElFTkSuQmCC",jg="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABUkAAAASCAYAAABmbV+qAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAARDSURBVHgB7d1PqKVjHAfw39UtmdKMP8MojIWVIkpC1JWQYfInsZkUhY0kWVEWNiyUJtkgUpqamsaCMmRqurIjlCQbf2L8GWMWyvgzM8fv6b6v+573nFOeuzhzzvT51NPvPffevp27/fY877MQAAAAAMDMGQwGn+TY0H7sra8XFhZujAqZd16OXc3HY2PmrszcHhUycynHY52MQQxnvpqZ78SMWwwAAAAAYKZk+fhUjktitXTszrLuj3qP5toUo4Vrm70r6j2Sa2Pvu7XPP85DQVooSQEAAABghmRBujnHtlz/xGhJWtaOLB8/qIgsmefmuKPJjE7WoPm8OzN/iAqZeXOsFKR/x2hBWtZrMSeUpAAAAAAwW57IdU5MLh+fjXrP9PK6maUcfTHq3dvJPNbL/ilL1/diTihJAQAAAGBGDAaD83PcHaO7SNvnnVk+flcRWTJvz3HZhMyy3szM/RWRJbPsSj29k9nf8fpGzBElKQAAAADMjsdjuHgs62jn+bmo92Cs7Pgs+qXr/ixIX4oKWZCenWNr8z37ecXnmbk35sh/JWn+c+vKzH/gjwAAAAAApqq5ff6uWC0f29KxLSC3Z3f3fVTIzFtznJnrSIy/AOrlqHdLrtNi8usAXogZ1+9CFzs/XGqe9ylKAQAAAGDqyi7RfkHalo+lHF3L7fP3xeRj9tW3z2d3eFaOLTH+mH1Zy5l5IGbYuC50sfPDdc3fLeXPvgkAAAAAYFquy3VVrBSNC7lOap7b+Vau9dnbrf//kVFun98cw0fhuzfaL2feRVGn7HQ9JYbL1u76cg2Z03ZBDHeh+7yTFAAAAACOv7Ljs3skvrvK7fPvRp3y3tAbYnTHZzTzq1zLUacc27+8yYwx3/WjXL/GHFos20lLWxrNFtPkuD0AAAAATEl2c7flODnX7zFcOrYl5PPZ131REVkytzSPhyZkPpmZv0SFzHw4x4EYf3S/lKOvZObBmHHNKfql5uPKcfvy1ClKXdwEAAAAANNVbp8fd1N8+97Qtyuy2veGLsXwxUrdzH1rKEgvzXFx73t2v++H81CQFuO60MXuLwMAAAAAmJos6x6IlWPspdDsvze0rKej3j0xfAFUvyjdGfXunPAdy/wtu8U9MUf6Xah3kgIAAADAcZAF6aYcN8X4XaTFnizzPo0Kmbkxx7WxWmj2329afft8Zl6R49RYfb9pW74WR6P+fakzR0kKAAAAAMdHuayp7CIdVz6Wz69HvYdi9Jh9u0o5ujvqXR+Tj+4fytL145hzSlIAAAAAmLLBYFBuny/l46R3kb6f5ePPFZEl85ocF+Y6EuOP2S/Xvjc0M6+O0V2k0cnfGycAJSkAAAAATN+2mFyQlrkj6m2N0YK0fT64hgugNuS4MsbvTC2532bmZ3ECWAgAAAAAYKqaG+gnqr19vsk8Y9Kvch3OzMNRn7lhTFbrz8z8K04A/wLN1RYVZP6QCwAAAABJRU5ErkJggg==",Dg="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABcQAAAASCAYAAAB1lt0bAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAARMSURBVHgB7d1NiJVVGAfw58ZEEBUSZR+gSdHGRa1cBIlGLTISgwKDKJII10EtatOihZuC2gQhFG0EEXSh2AeRWovARdDHIrCNVFqZYgsLNXt7jnPf5r137hXPHV3cy+8Hh+edOzN/Znnmz+G8vQAAYKY1TbMqx4FcZTbtx/31b65ver3emqiQmStyHO7/fnGhP9uvd2XmK1EhMzfmeL2f0XRm+7wtM/cHAADAhOYCAIBZ91yuUmCX0npU2fxC1Hsp17kYLKy7z29HvS2dzG5eWceV4QAAwFIpxAEAZljTNHfleC3XPzFYhrfPO7Jo/rYismSuzvFErvMxugx/NzN/qYgsmRty3HKJzA8CAABgiRTiAACz7dWYL5nbgjlisBjfFvXK74w6yV2eSxG+J+o9O/R3tnnFr1mwfxoAAABLpBAHAJhRTdOszLE5Fp+6bufOLJp/qogsmZty3BPjy+tyOvxYVMjMUobfHOOvYHkrAAAArgCFOADA7Ho5BkvmbtH8Z643o97WfmZxYSj7WJbh+6JCluHLczwUC6X9cBl+IDO/DwAAgCvg/0I8/xlZVmb+w3E6AACYarm3eyDHkzG+aN6e+76fKyJL5uMxeM93uy70f2R71Hs65k+Hj7s7fGcAAABMaLj3nut8uK7/fEgpDgAw9crp73Elc7nn+/2KrLJHvCHHljGZZR3PPeRHFZEl89Yca2PxfeTt/DIzTwQAAMAERvXec50Pr+3/3Lr87EgAADCt1udaEQsv0bwmForrXq695fu554sKG3KtjMESvLt2Zd7qqPNUrutj8Qn26M8fJsgEAABo3RuDvfehckK8nMg53/lGeT4TAABMq3KSe/jUdVs0l2tSdked23M9lutsDL5As80+kOvrqFOuXrk/198j8soqp82PBgAAwOSGe+9zc71e769sxg/G/Emi4mD5LAAAmDq5r9uU47qYP+Aw6mWa7+Rer6pozsxykrtsHs/G6OtS3svM3ysiS+bmHKdj8XUuZZ3KtT8zTwYAAMCE8v+OcgXj+v6XF3vvi3eId0rxUIYDAEyn3M/dmePFmC+vh09dl3kk93r7okJmLo/5DWR74ny4EP98gjK8vPDz7qHMbiG+VxkOAAAs1ajee677zQAAYJqVa03KiyrbQny4bH4j6m2O8S/nvHh3eNR79BKZp3JfejgAAACugOHeey4AAJh6TdOUe767d4cPF9ef5Ebwx4rIkrkqx9oYfzp8T2aeqMxck+OmGCztu5kfBwAAwFWiEAcAmA3Px/iT4WV+GPW2xnwZHrH4JPcfub6Ieo/E+IK9nA6vfTknAADAZVOIAwBMuaZpbsvxcCwUzcOl+GdZNP9WEVkyH8xxRyxcbdLNLXNP7T3fmVn+xhsvkbk7AAAAriKFOADA9Hsmxp/kPpNrR9TbGOOL65NZhn9VkVXK8GU57ovRpX15/i4zjwYAAAAAAAAAALA0/wEp3Rc3HxSAUgAAAABJRU5ErkJggg==",Fg="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAK8AAAAyCAYAAAAqaovoAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAKjSURBVHgB7d0xbE1hGMbx9zYGEkMjIgaVGiRCEwbCJDGZsDBIiEUiYZRIWCzCJowGJjVILMJgkWAhDB1uDJgq0iIVA9UEvZ73nnPuOff2fCe3trf5/5LX29s8OhyP2+/r0pZh2TqdzrjW5eKlZrHVap1uyN8ocvm+o/zbRPa41tZK/rmyLwxLrDL8jxMaL5kX7K/mbiqoMh7VOpLnvIwfG4q7UetcJTujuW2oRXmXSQXbrHVB88vKkl1t+CtnNPOV7M2G7Mk8u5jnH6vos4ZavfLqH2Wt1oSmrQf2w5By3vrLeF/Pa7ouqGd6SGudlYV8rezDRHaL1v5K9rOyk4akEf8jL+4uzWrf+WsM0HPZZNkRYD6f95rriawfAU5Vsj81Vxq+/Nk8U+TvGRoV77wTlY99e4H/GAb5ebSTj3upGdOzGqvJ+ruuHzGKS5pnx/PL3iB/49hu5SXtm+a3svsMdbyj7aKwbcseoL9e0EzpW9aCoUdF2q21QzNn2ZHhk57RpUR2g9ZOyy5cxfn1mvJfEvnDWtNWHkUmlX1lqKXntc13t7x+xtUnpvShf7JNcWtdtP7L1K2G7DHrPxc/ayjuHq01ll0A/bvdB4o7nN6FLb+kvTEsoYId1Bq1srwzel5PEtn1Wnsr2a+aB4ms3zEOVLLdC6BhKPyobDheyEfWf35N8fPvUyvPxv5z3blE1v9DvKt83VllvxuAlcnPvJrREQOCorwIi/IiLMqLsCgvwqK8CIvyIizKi7AoL8KivAiL8iIsyouwKC/CorwIi/IiLMqLsCgvwqK8CIvyIizKi7AoL8KivAiL8iIsyouwKC/CorwIi/IiLMqLsCgvwqK8CIvyIizKi7AoL8KivAiL8iIsyouwKC/CorwIi/Iiou7vxf4Hitbd/9fhaLcAAAAASUVORK5CYII=",$g="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJQAAAATCAYAAAB2iSS0AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAO0SURBVHgB7ZpJaBRBFIb/kdGDEkcT4y7mJngRQdxwOxiUiBLFDU9BFATB5eZBBPHgRXDBgzeTg8Gg5BDiEg2oiMRIwFzMQQ8GojHGJRGXg9n8X6Y7qanuGvNgZnKpD56vp5ffpt/fVdVVScAzKYyMjJRlO55IJDqh15zJlLJ3G5ofoISaRUxFLk3yk7q/xv4PeApOYKb3wc/hcHcQ8ruTRVoGJdR9xbTI0Ar1JHdRcxOUULOBab6lGep2M05Qtyc8PwnPZHCOMYTxYtvFPwIlLPwppnmMAUsrjCtQQs0KpjkOTdm+b5pJ8IYqMCzSUqZDjL+IN1Mti/RcISmai5l2I134OJN+pGY99FRh3Ey2oXqoWW1f4A1VeM7AbSaJi9BznDE3i+51KKFJ9zCVIGrScLsm7jpvqALCIm1gOgD3W1/Ht75LISmaC5l2Wpqmbhs1G5Sa0nVWwm3QXmo2x13rDVVYriLeTGG+BD3HkL3FOw89uxjFjEGkx3qwNG+5LhwzFF05lamMznsHT87h892P9NdSWHzBLNY17Wc9NRcwbYfbpA+o+UkhKZrSde6Au6t7Q82nwbkRzySNA5sZs2SbJ3TAk2tOIr5IgnRzd6HnLNxfYJJvQs8+ZLZ49iD/hpzk8kzSPBAILue+6cx/4MkVWxhLkC5IIggp1JTgeCMjxeeeUmiuZazGeGs3bGTZ18oopmYxJo5MjFYAkTmnMNoZpdQsZZaxm+kZmTjtSPKfAf7oNw56cos8+MOIDprNycEm6JEudBDRlkSQuaE70FPpuM8wHhrnSoMT8cxol0dTtYnDSBmjw3d5uYPPVVr/aYzfyOw+hoJ8Wfu8qVkebPYhvmuqp2YLFFBzJZO0PF8R332+pGardc0qWJ4ZG5QHpupm7oYnJwSf9Efhnr2W590IPQfhHufIJ/1t6NmLzDGe2YV+Y9yzL4jzTNI6wZspt8gSimvOSbYvQAkLKGaajUyTwtCugxJqyngshaihwnttoTe+x11re8bPQ+UJFkmmCLYhOkcUFquJxWhXakqXtBHuT/ov1HwGPeXGfdoG7aPm44kKeUPljyq4zSRRAz2yHCID4bg1u9GxE5TQpGLQImS2eKapHkGBN1QeYJFWMG1FukiC3Y00863/DAXUlFX/9YiOx8L8lpovFJKiKV3nOrgXlfup+Voh6Q2VJ04j++RgLfTIcoir8JKroWcNYwbcXegTKPF/YJcHguULJ3zre6HXLMl22DVo/o9m3NxjOJcl9/kDSv4BFNArlYk5WokAAAAASUVORK5CYII=",Bg=""+new URL("bag-fb5ed271.png",import.meta.url).href,Hg=""+new URL("bagFull-8e59a81b.png",import.meta.url).href,Vg=""+new URL("ornament-64db8919.png",import.meta.url).href,Wg=""+new URL("weapon-c3cc307f.png",import.meta.url).href,Qg=""+new URL("bgItemManufacturable-366ab5f9.png",import.meta.url).href,Kg=""+new URL("bgItemManufacturableH-56649e89.png",import.meta.url).href,Gg=""+new URL("bgItemManufacturing-2d599d72.png",import.meta.url).href,Yg=""+new URL("bgNecessair-94ac9f5b.png",import.meta.url).href,Xg=""+new URL("arrow-3b24227e.svg",import.meta.url).href,Jg=""+new URL("box-046afafe.svg",import.meta.url).href,Zg=""+new URL("bronzeCoin-e0790daf.svg",import.meta.url).href,qg=""+new URL("clock-5b160b52.svg",import.meta.url).href,e1=""+new URL("clockFull-c3366306.svg",import.meta.url).href,t1=""+new URL("engrenagem-44bec825.png",import.meta.url).href,n1=""+new URL("goldCoin-5a9b28ec.svg",import.meta.url).href,r1=""+new URL("info-24cb0bef.svg",import.meta.url).href,i1=""+new URL("silverCoin-5441aca0.svg",import.meta.url).href,o1=""+new URL("arrowFilter-5b63fd39.svg",import.meta.url).href,l1="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEkAAABJCAYAAABxcwvcAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAASHSURBVHgB5ZzhcdQwEIXfMfyHEkQFQAU4HYQKOCoAKuBSAaGCJBWEDu6oIEkFNhUkHSzaSE6Om/NJK++exuab8Zhh7Eh52pW0q3UWqAgRtfGfD/Ea4naxWHzD/4YXqKF8WlTkBerxTvCs80K9RiWmIhLzAZWoKdJbyHiDSlQRKbqO1JIaVKKWJUkFYqSWp0axSN4aLvz1HWWUiFQ0efM73E9/lbRZThToaXn2lxO+f01lNMJ2mtg/5v4oQsVRuRn4BZJWtTWq91TGdY5QsZ0fe963FSohUE9Le6yKwoiuSY/WX58G+rltPfuwEYryBNrmO423mhxaCq7/OF/RfuvZh0ioRY5A/rZG2WR7TDj2k0zs/PyJjwlvUw8eFGlCApWSJVRqC3CO+QrEPBoBJVbnlCU5f7uBzIynRuct6WDIc9CS/Mudv51h3pykHkjuuL1Q7HIbzJOzaAgHSa5uzEzdLulmPVmx20zdLulmPdkBbnS75J5iImS5WU+Wu/XEXeoNpk22m/VIUyWpU40pIJ42XkJGA5vJm4Xf4HkAXGzHYiPLgfElrKDD0bUUDjJXdCD1EQPXpXK7RMK8lEQgyTlZinMSZhlJV6xzWOB/8CWNh62nQSEULEuSsjnUD91pI3ZOo2MOIyF5bmuIr9CEdKyogRIUhGppHOvc9hZ7OsArSn+9jfexpsmbtxUUiaJn/6IDbPx1F++3QxvMhW/sFGFp52NkB/0lvkNIbHVQJlpDAz36rci2cA+PDZEtFzCCdFfcIdwxTnB/wgg/yhsESzXFWqSHnET7SH7DGGuRjpE1MG/DWqQO9pgH3DXrkyaDtUgO9pinlOcgkoMxL4wb4ZjPwRbzWspjzEmnMCIOgPkJM4v0GSGl+Qs2K8UX2LGCHU/Z0n0BrkMYnQZ6Ae63eNqiRuynVhF8L8gfhH3XRhxr0vhUiUouaadPpSWFPa2/TtX6RTqBJCfKVJZrCsVhY9EPvEknW8BCOYyAdAQislh1/Q/9Sjq0NFDvmGiftxNr0sEmfUMhZapZ/5hbSfuO9Gsvk+1uIz3m5hVKe0nvEFaUOzwHxK8QviXhjaL2Pkh8zC0VqcH4vHJtll6kK8kL0h23w/QRb5izLYnCasBW5DBtOn+9f0zwZyKxpBXmYUnOX6IPh3LLAZf+ZnbqUYmTeJCQJOeLAId5uNkuHTLdLsfdVpifQIxDptulit2XmJ+b7ZJ0u5RIXB85588mmA4Jt0u5Gyfkpl4jmeIqNS/lTNxsSTxxz/H7kqxql5zPJjiu4sLwXIvi5/jvinzEcT636BDSz9KaA/VyoD4aT0Xia9rJ01BIcXBmsyVd1rvRPOXXVa5gBQ0Lxf+XLK+j8cWhfcXu6wNt9IMyhG4Z4EAndoVakyDLRyEvVUr2vEj7B2SJYxGFaktHhcoKQ8Wfa9C/VrXElKCy05fiTS2N/MS9VlVJSU3RHQoZW0g2JZE2qIQofasFhQn4XvKOt4YqfWWqWFIMAzrBKxtUpGalm6QgtHg+0qCmSJJ5qeoJTTU/74nzU2qT+CBJ3GvzFzJfaFFdyBTjAAAAAElFTkSuQmCC",a1=""+new URL("close-a8f388fc.svg",import.meta.url).href,s1=""+new URL("check-b14882c8.svg",import.meta.url).href,u1=""+new URL("engrenagemFull-97ffc6f4.png",import.meta.url).href,c1=""+new URL("shop-b041f53f.svg",import.meta.url).href,f1=""+new URL("transfer-a9dbd3b6.svg",import.meta.url).href,d1=""+new URL("mask-7e1e593d.svg",import.meta.url).href,np={bar1:Mg,bar2:bg,bar3:Ug,bar4:jg,bar5:Dg,bar6:Fg,bar7:$g,bag:Bg,bagFull:Hg,ornament:Vg,weapon:Wg,bgItemManufacturable:Qg,bgItemManufacturableH:Kg,bgItemManufacturing:Gg,bgNecessair:Yg},Z={arrow:Xg,arrowFilter:o1,box:Jg,bronzeCoin:Zg,clock:qg,clockFull:e1,engrenagem:t1,goldCoin:n1,info:r1,silverCoin:i1,progress:l1,close:a1,check:s1,engrenagemFull:u1,shop:c1,transfer:f1,mask:d1},Pn=G.createContext({url:"",setUrl:()=>{}}),p1=Bs` 
    from {
        transform: rotate(0deg);
    }
    to {
        transform: rotate(180deg);
    }
`,h1=Xe.div`
    .crafting {
        width: 64.3vh;
        display: flex;
        align-items: center;
        flex-direction: column;

        .flex {
            display: flex;
            align-items: center;
            gap: 0.44vw;

            .arrowLeft {
                transform: rotate(180deg);
            }

            button {
                width: 4.1987vh;
                height: 4.1987vh;
                border-radius: 1vh;
                background: radial-gradient(
                        60.71% 212.5% at 50% 50%,
                        rgba(61, 61, 61, 0.8) 0%,
                        rgba(35, 35, 35, 0.8) 100%
                    ),
                    rgba(0, 0, 0, 0.75);
                border: 0;
                transition: all 0.2s ease-in-out;

                img {
                    opacity: 0.5;
                }

                &:hover {
                    cursor: pointer;

                    span {
                        background: linear-gradient(
                            17deg,
                            #ea3e3e 35.55%,
                            rgba(234, 62, 62, 0) 173.03%,
                            rgba(75, 109, 213, 0) 173.04%
                        );
                    }
                }
            }

            input {
                width: 15.6402vh;
                height: 4.1936vh;
                border-radius: 1vh;
                border: 0.1vh solid rgba(255, 255, 255, 0.1);
                background: radial-gradient(
                        55.5% 100.01% at 50% 50%,
                        rgba(0, 0, 0, 0.15) 0%,
                        rgba(0, 0, 0, 0) 100%
                    ),
                    rgba(11, 11, 11, 0.55);
                color: rgba(255, 255, 255, 1);
                text-align: center;
                font-size: 1.661vh;
                font-style: normal;
                font-weight: 300;
                line-height: 91%;
                outline: none;

                &::placeholder {
                    color: rgba(255, 255, 255, 0.25);
                }
            }
        }

        .infos {
            width: 60.2515vh;
            margin-top: 2.3vh;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 2.3vh;
            flex-direction: column;

            .mask {
                width: 47.5vh;
                height: 47.5vh;
                -webkit-mask: url(${Z.mask});
                mask: url(${Z.mask});
                -webkit-mask-size: 100% 100%;
                mask-size: 100% 100%;
                z-index: -1;
                position: absolute;
                top: 14vh;
            }
            .transfer {
                width: 100%;
                animation: ${p1} 25s infinite linear;
                position: absolute;
            }

            /* background: url(${np.ornament}); */
            /* background-size: 100% 100%; */

            p {
                color: #fff;
                text-align: center;
                font-size: 2.2113vh;
                font-style: normal;
                font-weight: 700;
                line-height: 91%; /* 2.0123vh */
            }

            .flex {
                .amount {
                    padding-left: 1vh;
                    padding-right: 1vh;
                    min-width: 5.3745vh;
                    height: 4.0819vh;

                    border-radius: 0.8874vh;
                    border: 0.0887vh solid rgba(255, 255, 255, 0.1);
                    background: radial-gradient(
                            55.5% 100.01% at 50% 50%,
                            rgba(0, 0, 0, 0.15) 0%,
                            rgba(0, 0, 0, 0) 100%
                        ),
                        rgba(11, 11, 11, 0.55);
                    color: #fff;
                    font-size: 1.643vh;
                    font-style: normal;
                    font-weight: 500;
                    line-height: 91%; /* 1.4951vh */
                    text-align: center;

                    display: flex;
                    align-items: center;
                    justify-content: center;
                }

                .timing {
                    width: 10.8852vh;
                    height: 4.0819vh;
                    border-radius: 0.8874vh;
                    border: 0.0887vh solid rgba(255, 255, 255, 0.1);
                    background: radial-gradient(
                            55.5% 100.01% at 50% 50%,
                            rgba(0, 0, 0, 0.15) 0%,
                            rgba(0, 0, 0, 0) 100%
                        ),
                        rgba(11, 11, 11, 0.55);
                    color: #fff;
                    font-size: 1.643vh;
                    font-style: normal;
                    font-weight: 500;

                    text-align: center;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    gap: 1vh;

                    img {
                        height: 2.041vh;
                    }
                }
            }
        }

        .necessair {
            margin-top: 1.7vh;
            .flex {
                button {
                    width: 61.7vh;
                    height: 5.7vh;
                    border-radius: 1vh;
                    background: linear-gradient(
                        270deg,
                        #3f3f3f 0%,
                        rgba(63, 63, 63, 0) 125.41%
                    );
                    border: 0;
                    color: #fff;
                    text-align: center;
                    font-size: 1.5567vh;
                    font-style: normal;
                    font-weight: 800;
                    line-height: normal;
                    transition: all 0.2s ease-in-out;
                    cursor: pointer;

                    &:hover {
                        border-radius: 0.3877vh;
                        background: linear-gradient(
                            270deg,
                            #ffda00 -2.56%,
                            rgba(255, 218, 0, 0) 189.13%
                        );
                        color: #1a1a1a;
                    }
                }
            }

            .list {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 1vh;
                margin-top: 0.8vh;

                width: 60.251vh;
                height: 23.343vh;
                overflow: auto;

                &::-webkit-scrollbar {
                    display: none;
                }

                .item {
                    width: 19.8964vh;
                    height: 11.1641vh;
                    border-radius: 1vh;
                    background: linear-gradient(
                        270deg,
                        #3f3f3f 0%,
                        rgba(63, 63, 63, 0) 125.41%
                    );
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    flex-direction: column;

                    position: relative;

                    .name {
                        color: #fff;
                        text-align: center;
                        font-size: 1.3264vh;
                        font-style: normal;
                        font-weight: 700;
                        line-height: normal;

                        position: absolute;
                        top: 0.8vh;
                    }

                    img {
                        max-width: 13.4853vh;
                        max-height: 6.19vh;
                    }

                    .amount {
                        width: fit-content;
                        height: 1.7398vh;

                        border-radius: 1vh;
                        background: linear-gradient(
                                20deg,
                                #4b6dd5 -4.5%,
                                rgba(75, 109, 213, 0) 163.37%
                            ),
                            rgba(0, 0, 0, 0.2);
                        filter: drop-shadow(
                            0vh 0vh 1.8791vh rgba(75, 109, 213, 0.43)
                        );

                        color: #fff;
                        text-align: center;
                        font-size: 0.9948vh;
                        font-style: normal;
                        font-weight: 600;

                        padding-left: 1.8vh;
                        padding-right: 1.8vh;

                        display: flex;
                        align-items: center;
                        justify-content: center;
                        position: absolute;
                        bottom: 0.3vh;
                    }

                    .amountOff {
                        width: fit-content;
                        height: 1.7398vh;
                        background: linear-gradient(
                            17deg,
                            #ea3e3e80 35.55%,
                            rgba(234, 62, 62, 0) 173.03%,
                            rgba(75, 109, 213, 0) 173.04%
                        );

                        filter: drop-shadow(
                            0vh 0vh 1.8791vh rgba(75, 109, 213, 0.43)
                        );
                        border: 0.1vh solid #ea3e3e;

                        color: #fff;
                        text-align: center;
                        font-size: 0.9948vh;
                        font-style: normal;
                        font-weight: 600;

                        padding-left: 1.8vh;
                        padding-right: 1.8vh;

                        display: flex;
                        align-items: center;
                        justify-content: center;
                        position: absolute;
                        bottom: 0.3vh;
                    }
                }
            }
        }
    }

    .margin {
        margin-top: 5vh;
    }
`,m1=({itemSelected:e,onKey:t})=>{const[n,r]=S.useState(!0),[i,o]=S.useState(1);S.useState(!1);const{url:l,setUrl:a}=S.useContext(Pn),s=h=>{h=="add"&&o(g=>g+1),h=="rem"&&o(g=>g==1?1:g-1)};S.useEffect(()=>{o(1);let h=!0;e!=null&&e.receipt&&e.receipt.forEach(g=>{g.necessary=g.necessary||0,g.amount=g.amount||0,g.amount<g.necessary*i&&(h=!1)}),r(h)},[e]);function u(h,g){Ye("craftItem",{item:h,amount:g}).then(v=>{v&&(o(1),t())})}function f(h){const g=Math.floor(h/1e3),v=Math.floor(g/3600),y=Math.floor((g-v*3600)/60),x=g%60;return`${v.toString().padStart(2,"0")}:${y.toString().padStart(2,"0")}:${x.toString().padStart(2,"0")}`}function p(h){Number(h.target.value)<1&&o(1),Number(h.target.value)>999&&o(999),Number(h.target.value)>=1&&Number(h.target.value)<=999&&o(Number(h.target.value))}return A(h1,{children:z("div",{className:"crafting",children:[z("div",{className:"infos",children:[A("div",{className:"mask",children:A("img",{className:"transfer",src:Z.transfer,alt:""})}),A("p",{children:e==null?void 0:e.name.toUpperCase()}),A("img",{className:"itemSelectedImage",src:l+(e==null?void 0:e.spawn)+".png",alt:""}),z("div",{className:"flex margin",children:[A("button",{className:"arrowLeft",onClick:()=>s("rem"),children:A("img",{src:Z.arrow,alt:""})}),A("input",{type:"text",placeholder:"QUANTIDADE",min:1,max:999,onChange:h=>p(h),value:i}),A("button",{className:"arrowRight",onClick:()=>s("add"),children:A("img",{src:Z.arrow,alt:""})})]}),z("div",{className:"flex",children:[z("div",{className:"amount",children:[(((e==null?void 0:e.amount)||0)*i).toLocaleString("pt-BR",{minimumFractionDigits:0}),"x"]}),z("div",{className:"timing",children:[A("img",{src:Z.clock,alt:""}),A("span",{children:f(((e==null?void 0:e.timing)||0)*i)})]})]})]}),z("div",{className:"necessair",children:[A("div",{className:"flex",children:A("button",{disabled:!n,onClick:()=>u((e==null?void 0:e.spawn)||"",i),children:"CRAFTAR"})}),A("div",{className:"list",children:e!=null&&e.receipt?A(qt,{children:e==null?void 0:e.receipt.map((h,g)=>z("div",{className:"item",children:[A("div",{className:"name",children:h.name}),A("img",{src:l+h.index+".png",alt:""}),h.amount>=h.necessary*i?z("div",{className:"amount",children:[h.amount,"/",h.necessary*i]}):z("div",{className:"amountOff",children:[h.amount,"/",h.necessary*i]})]}))}):A(qt,{})})]})]})})},g1=Xe.div`
    .manufacturing {
        display: flex;
        align-items: flex-start;
        flex-direction: column;

        .top {
            display: flex;
            align-items: center;
            justify-content: center;

            gap: 1.7vh;

            img {
                width: 14.8748vh;
            }

            h1 {
                font-size: 2.8307vh;
                font-style: normal;
                font-weight: 700;
                line-height: normal;
                background: linear-gradient(
                    90deg,
                    #fff 0%,
                    rgba(255, 255, 255, 0) 154.87%
                );
                background-clip: text;
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
            }
        }

        .list {
            width: 41vh;
            height: 73.437vh;
            overflow: auto;
            direction: rtl;

            .item {
                width: 39.472vh;
                height: 7.6917vh;
                margin-bottom: 1vh;
                direction: ltr;
                display: flex;

                .left {
                    width: 30.9499vh;
                    height: 7.5656vh;

                    display: flex;
                    align-items: center;

                    .img {
                        width: 9.5452vh;
                        height: 7.7366vh;
                        border-radius: 1.0048vh;
                        background: radial-gradient(
                                60.71% 212.5% at 50% 50%,
                                rgba(61, 61, 61, 0.8) 0%,
                                rgba(35, 35, 35, 0.8) 100%
                            ),
                            rgba(0, 0, 0, 0.75);
                    }

                    .imgItem {
                        max-width: 8.5656vh;
                        max-height: 8.5656vh;

                        display: flex;
                        align-items: center;
                        justify-content: center;
                    }

                    .infos {
                        display: flex;
                        align-items: center;
                        gap: 0.7vh;
                        width: 30.444vh;
                        height: 7.7366vh;
                        border-radius: 1.0048vh;
                        background: rgba(0, 0, 0, 0.25);
                    }

                    .amount {
                        width: 6.3299vh;
                        height: 5.6266vh;
                        margin-left: 1.5vh;
                        color: #fff;
                        text-align: center;
                        font-size: 1.9658vh;
                        font-style: normal;
                        font-weight: 400;
                        line-height: normal;

                        border-radius: 1vh;

                        background: radial-gradient(
                                55.5% 100.01% at 50% 50%,
                                rgba(0, 0, 0, 0.15) 0%,
                                rgba(0, 0, 0, 0) 100%
                            ),
                            rgba(11, 11, 11, 0.55);
                        border: 0.1005vh solid rgba(255, 255, 255, 0.1);
                        display: flex;
                        align-items: center;
                        justify-content: center;
                    }

                    .timing {
                        width: 15.0713vh;
                        height: 5.6266vh;
                        background: radial-gradient(
                                55.5% 100.01% at 50% 50%,
                                rgba(0, 0, 0, 0.15) 0%,
                                rgba(0, 0, 0, 0) 100%
                            ),
                            rgba(11, 11, 11, 0.55);
                        border: 0.1005vh solid rgba(255, 255, 255, 0.1);
                        border-radius: 1vh;

                        display: flex;
                        align-items: center;
                        justify-content: center;
                        gap: 0.5vh;

                        color: #fff;
                        text-align: center;
                        font-size: 1.7658vh;
                        font-style: normal;
                        font-weight: 400;
                        line-height: normal;

                        img {
                            width: 2;
                        }
                    }
                }

                .right {
                    width: 7.5656vh;
                    height: 7.5656vh;
                    position: relative;
                    margin-left: 2vh;
                    overflow: hidden;

                    .button {
                        width: 100%;
                        height: 100%;
                        background: radial-gradient(
                                76.47% 102.65% at 50% 78.53%,
                                rgba(255, 255, 255, 0.1) 0%,
                                rgba(255, 255, 255, 0) 100%
                            ),
                            rgba(0, 0, 0, 0.35);
                        border: 0.1276vh solid rgba(255, 255, 255, 0.12);
                        outline: none;
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        transition: all 0.2s ease-in-out;
                        cursor: pointer;
                        color: #fff;
                        text-align: center;
                        font-size: 1.1vh;
                        font-style: normal;
                        font-weight: 800;
                        line-height: normal;

                        &:hover {
                            border: 0.1207vh solid #4b6dd5;
                            background: linear-gradient(
                                    20deg,
                                    #4b6dd5 -4.5%,
                                    rgba(75, 109, 213, 0) 163.37%
                                ),
                                rgba(0, 0, 0, 0.2);
                            box-shadow: 0vh 0vh 2.0521vh 0vh
                                rgba(75, 109, 213, 0.43);
                        }
                    }
                }
            }
        }
    }
`,v1=Bs`
    from {
        transform: translate(-50%, -50%) rotate(0deg);
    }
    to {
        transform: translate(-50%, -50%) rotate(180deg);
    }
`,y1=Bs`
    from {
        transform: translate(-50%, -50%) rotate(360deg);
    }
    to {
        transform: translate(-50%, -50%) rotate(180deg);
    }
`,w1=Xe.div`
    width: 7.1892vh;
    height: 7.1881vh;
    zoom: 0.8;

    background: rgba(255, 255, 255, 0.1);
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    -webkit-mask: url(${Z.progress});
    -webkit-mask-size: 8.01vh;
    mask: url(${Z.progress});
    mask-size: 100% 100%;
    animation: ${v1} 8s infinite linear;
    transform-origin: center center;
    transition: all;

    &:hover {
        cursor: pointer;

        span {
            background: linear-gradient(
                17deg,
                #ea3e3e 35.55%,
                rgba(234, 62, 62, 0) 173.03%,
                rgba(75, 109, 213, 0) 173.04%
            );
        }
    }
    .progressContent {
        width: 7.1892vh;
        height: 7.1881vh;
        display: flex;
        align-items: flex-end;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);

        animation: ${y1} 8s infinite linear;
        transform-origin: center center;
    }

    span {
        display: block;
        width: 100%;
        max-height: 100%;
        height: 40%;
        border-radius: 3.877px;
        background: linear-gradient(180deg, #ffda00 0%, #cea40e 100%);
        transform-origin: center;
        position: absolute;
        transform-style: preserve-3d;
        transform: none;
        transition: all 0.2s ease-in-out;
    }
`,A1=()=>{const[e,t]=S.useState([]),{url:n,setUrl:r}=S.useContext(Pn),[i,o]=S.useState(!1);S.useEffect(()=>{Ye("requestProducing",{}).then(s=>{const u=s.sort((p,h)=>p.status===h.status?0:p.status?1:-1);t(u);const f=setInterval(()=>{t(p=>p.map(g=>{const v=g.timing-1e3;return{...g,timing:v}}).sort((g,v)=>g.status===v.status?0:g.status?1:-1))},1e3);return()=>clearInterval(f)})},[i]);function l(s){const u=Math.floor(s/1e3),f=Math.floor(u/3600),p=Math.floor((u-f*3600)/60),h=u%60;return`${f.toString().padStart(2,"0")}:${p.toString().padStart(2,"0")}:${h.toString().padStart(2,"0")}`}function a(s){Ye("redeemItem",{index:s}).then(u=>{u&&(o(!0),setTimeout(()=>{o(!1)},500))})}return A(g1,{children:z("div",{className:"manufacturing",children:[A("div",{className:"top",children:A("h1",{children:"EM FABRICAÇÃO"})}),A("div",{className:"list",children:e.map((s,u)=>{const p={height:`${(100-s.timing/s.originalTiming*100).toFixed(2)}%`};return A(qt,{children:A("div",{className:"item",children:z("div",{className:"left",children:[A("div",{className:"img",children:A("img",{src:n+s.spawn+".png",alt:"",className:"imgItem"})}),z("div",{className:"infos",children:[z("div",{className:"amount",children:[s.stock,"x"]}),A("div",{className:"timing",children:Number(p.height.replace("%",""))>=100?A(qt,{children:"Pronto"}):z(qt,{children:[A("img",{src:Z.clock,alt:""}),A("span",{children:l(s.timing)})]})}),A("div",{className:"right",children:Number(p.height.replace("%",""))>=100?A("button",{className:"button",onClick:()=>a(s.index),children:A("img",{src:Z.check,alt:""})}):A(w1,{children:A("div",{className:"progressContent",children:A("span",{style:p})})})})]})]})},s.name+`${u}`)})})})]})})},k1=()=>{const[e,t]=S.useState(),[n,r]=S.useState(),{url:i,setUrl:o}=S.useContext(Pn),[l,a]=S.useState(Date.now());S.useEffect(()=>{Ye("requestItensCraft",{}).then(f=>{t(f),r(f[0])})},[]);function s(f){const p=Math.floor(f/1e3),h=Math.floor(p/3600),g=Math.floor((p-h*3600)/60),v=p%60;return`${h.toString().padStart(2,"0")}:${g.toString().padStart(2,"0")}:${v.toString().padStart(2,"0")}`}const u=()=>{a(Date.now()),Ye("requestItensCraft",{}).then(f=>{t(f),r(f[0])})};return z(_g,{children:[z("div",{className:"manufacturable",children:[A("div",{className:"top",children:A("h1",{children:"LISTA DE FABRICAVEIS"})}),A("div",{className:"list",children:e==null?void 0:e.map(f=>A(qt,{children:z("div",{className:n===f?"item selected":"item",onClick:()=>r(f),children:[z("div",{className:"left",children:[A("img",{className:"engrenagem",src:Z.engrenagem,alt:""}),A("img",{className:"imgItem",src:i+f.spawn+".png",alt:""})]}),z("div",{className:"timing",children:[A("img",{src:Z.clock,alt:""}),A("span",{children:s(f.timing)})]})]})}))})]}),A(m1,{itemSelected:n,onKey:u}),A(A1,{},l)]})},x1=Xe.div`
    .top {
        width: 148.4vh;

        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 2vh;

        h1 {
            font-size: 2.7925vh;
            font-style: normal;
            font-weight: 700;
            line-height: normal;
            background: linear-gradient(
                90deg,
                #fff 0%,
                rgba(255, 255, 255, 0) 154.87%
            );
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        img {
            width: 105.8vh;
        }

        button {
            width: 23.0342vh;
            height: 5.1488vh;
            border-radius: 10px;
            background: linear-gradient(
                270deg,
                #3f3f3f 0%,
                rgba(63, 63, 63, 0) 125.41%
            );
            border: 0;
            color: #fff;
            text-align: center;
            font-size: 1.8445vh;
            font-style: normal;
            font-weight: 800;
            line-height: normal;
            transition: all 0.2s ease-in-out;

            &:hover {
                cursor: pointer;

                cursor: pointer;
                border-radius: 1vh;
                background: linear-gradient(
                    270deg,
                    #ffda00 -2.56%,
                    rgba(255, 218, 0, 0) 189.13%
                );
                color: #1a1a1a;
            }
        }
    }

    .list {
        margin-top: 1vh;
        width: 149vh;
        height: 71vh;
        display: grid;
        gap: 1vh;
        grid-template-columns: repeat(6, 1fr);
        grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
        overflow: auto;

        .item {
            width: 23.6045vh;

            .top {
                width: 23.6045vh;
                height: 12.621vh;
                border-radius: 1vh;
                background: radial-gradient(
                        60.71% 212.5% at 50% 50%,
                        rgba(61, 61, 61, 0.8) 0%,
                        rgba(35, 35, 35, 0.8) 100%
                    ),
                    rgba(0, 0, 0, 0.75);
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                position: relative;

                .name {
                    color: #fff;
                    text-align: center;
                    font-size: 1.5455vh;
                    font-style: normal;
                    font-weight: 700;
                    line-height: normal;

                    position: absolute;
                    top: 1vh;
                }

                img {
                    width: auto;
                    object-fit: cover;
                    height: 7.2121vh;
                    position: relative;
                    top: 9px;
                }
            }
            .bottom {
                width: 100%;
                display: flex;
                justify-content: space-between;
                margin-top: 1vh;
                button {
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    gap: 0.5vh;
                    width: 50%;
                    height: 3.4325vh;

                    &:first-child {
                        width: 11.2vh;
                        justify-content: space-between;
                        padding-left: 0.5vh;
                        padding-right: 0.5vh;
                        border-radius: 1vh;
                        color: #fff;
                        text-align: center;
                        leading-trim: both;
                        text-edge: cap;
                        font-family: Poppins;
                        font-size: 1.2336vh;
                        font-style: normal;
                        font-weight: 500;
                        line-height: normal;
                        background: radial-gradient(
                                55.5% 100.01% at 50% 50%,
                                rgba(0, 0, 0, 0.15) 0%,
                                rgba(0, 0, 0, 0) 100%
                            ),
                            rgba(11, 11, 11, 0.55);
                        border: 0.1vh solid rgba(255, 255, 255, 0.1);
                    }

                    &:last-child {
                        border: 0;
                        border-radius: 1vh;
                        background: linear-gradient(
                            270deg,
                            #3f3f3f 0%,
                            rgba(63, 63, 63, 0) 125.41%
                        );
                        color: #fff;
                        text-align: center;
                        font-size: 1.2108vh;
                        font-style: normal;
                        font-weight: 800;
                        line-height: normal;
                        transition: all 0.2s ease-in-out;

                        &:hover {
                            cursor: pointer;
                            border-radius: 1vh;
                            background: linear-gradient(
                                270deg,
                                #ffda00 -2.56%,
                                rgba(255, 218, 0, 0) 189.13%
                            );
                            color: #1a1a1a;
                        }
                    }
                }
            }
        }
    }
`,S1=()=>{const[e,t]=S.useState(!1),[n,r]=S.useState([]),[i,o]=S.useState(0),{url:l,setUrl:a}=S.useContext(Pn);S.useEffect(()=>{Ye("requestStorage",{}).then(f=>{t(f.status),r(f.list)})},[i]);const s=f=>{Ye("storageItem",{item:f.spawn}).then(p=>{p&&(o(h=>h+1),t(!0))})};return z(x1,{children:[z("div",{className:"top",children:[A("h1",{children:"ARMAZEM"}),A("button",{onClick:()=>{Ye("storageAll",{}).then(f=>{f&&(o(p=>p+1),t(!0))})},children:"DEPOSITAR TUDO"})]}),A("div",{className:"list",children:n.map((f,p)=>z("div",{className:"item",children:[z("div",{className:"top",children:[A("div",{className:"name",children:f.name.toUpperCase()}),A("img",{src:l+(f==null?void 0:f.spawn)+".png",alt:"",className:"imgItem"})]}),z("div",{className:"bottom",children:[z("button",{children:[A("img",{src:Z.box,alt:""}),z("p",{children:[f.stock||0,"/",f.maxStock]})]}),A("button",{onClick:()=>s(f),children:"DEPOSITAR"})]})]}))})]})},C1=Xe.div`
    display: flex;
    align-items: center;
    flex-direction: column;
    gap: 1vh;
    .top {
        width: 149.7866vh;

        display: flex;
        align-items: center;
        justify-content: flex-start;
        gap: 2vh;

        h1 {
            font-size: 2.7925vh;
            font-style: normal;
            font-weight: 700;
            line-height: normal;
            background: linear-gradient(
                90deg,
                #fff 0%,
                rgba(255, 255, 255, 0) 154.87%
            );
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        img {
            width: 126.8vh;
        }
    }

    .list {
        width: 148.7866vh;
        height: 70.1vh;
        overflow: auto;
    }
`,E1=Xe.div`
    display: flex;
    margin-bottom: 1vh;
    width: 100%;
    height: 15.7vh;
    border-radius: 1.0048vh;
    background: rgba(0, 0, 0, .25);

    align-items: center;
    .left {
        display: flex;
        align-items: center;
        justify-content: center;

        .arrowLeft {
            transform: scale(-1);
        }

        .arrow {
            opacity: 0.5;
            transition: all 0.2s ease-in-out;
            cursor: pointer;

            &:hover {
                opacity: 1;
            }
        }

        .listItem {
            width: calc(5 * 12.8vh + 3 * 1.4vh);
            overflow: hidden;
            position: relative;

            .sliderContainer {
                display: flex;
                transition: all 0.2s ease-in-out;
                width: calc(5 * 12.8vh + 40 * 1.4vh);
            }

            .subItem {
                width: 12.8vh;
                height: 13.12vh;
                transition: all 0.2s ease-in-out;
                margin-right: 1vh;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 1vh;
                background: radial-gradient(
                        60.71% 212.5% at 50% 50%,
                        rgba(61, 61, 61, 0.8) 0%,
                        rgba(35, 35, 35, 0.8) 100%
                    ),
                    rgba(0, 0, 0, 0.75);

                position: relative;

                color: rgba(255, 255, 255, 0.4);
                font-size: 1.3362vh;
                font-style: normal;
                font-weight: 600;
                line-height: normal;

                .name {
                    position: absolute;
                    bottom: 1vh;
                }

                .amount {
                    position: absolute;
                    top: 1vh;
                    left: 1vh;
                }

                img {
                    width: 60%;
                }
            }

            .subItemVoid {
                border-radius: 1vh;
                border: 0.1vh solid rgba(255, 255, 255, 0.1);
                background: radial-gradient(
                        55.5% 100.01% at 50% 50%,
                        rgba(0, 0, 0, 0.15) 0%,
                        rgba(0, 0, 0, 0) 100%
                    ),
                    rgba(11, 11, 11, 0.55);
            }
        }
    }

    .right {
        width: 91vh;

        .topRight {
            width: 74vh;
            height: 8.16vh;
            border-radius: 1vh;
            background: radial-gradient(
                    60.71% 212.5% at 50% 50%,
                    rgba(61, 61, 61, 0.8) 0%,
                    rgba(35, 35, 35, 0.8) 100%
                ),
                rgba(0, 0, 0, 0.75);

            display: flex;
            align-items: center;

            .info {
                width: 50%;
                display: flex;
                align-items: center;
                justify-content: center;

                img {
                    width: 2.7553vh;
                    height: 2.7553vh;
                    margin-right: 2vh;
                    flex-shrink: 0;
                }

                .description {
                    p {
                        color: rgba(255, 255, 255, 0.4);
                        text-align: center;
                        font-size: 1.069vh;
                        font-style: normal;
                        font-weight: 600;
                        line-height: normal;
                        display: flex;
                        align-items: center;
                        gap: 0.5vh;
                    }

                    .red {
                        color: #ea3e3e;
                        font-size: 1.069vh;
                        font-style: normal;
                        font-weight: 600;
                        line-height: normal;
                    }

                    .blue {
                        color: #405aa7;
                        font-size: 1.069vh;
                        font-style: normal;
                        font-weight: 600;
                        line-height: normal;
                    }

                    .yellow {
                        color: #e3d346;
                        text-align: center;
                        font-size: 2.6663vh;
                        font-style: normal;
                        font-weight: 600;
                        line-height: normal;
                    }
                }
            }
        }

        .bottomRight {
            width: 74vh;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 1vh;
            margin-top: 1vh;

            button {
                flex: 1;
                height: 4vh;
                border-radius: .6vh;
                background: linear-gradient(
                    270deg,
                    #3f3f3f 0%,
                    rgba(63, 63, 63, 0) 125.41%
                );
                border: 0;

                color: #fff;
                text-align: center;
                font-size: 1.7153vh;
                font-style: normal;
                font-weight: 600;
                line-height: normal;
                transition: all 0.2s ease-in-out;

                &:hover {
                    cursor: pointer;
                    border: 0;
                    background: linear-gradient(
                        270deg,
                        #ffda00 -2.56%,
                        rgba(255, 218, 0, 0) 189.13%
                    );
                    color: #1a1a1a;
                    box-shadow: 0vh 0vh 1.7vh 0vh rgba(255, 218, 0, 0.43);
                }
            }
        }
    }
`,N1=({alertPolice:e,itens:t,routes:n,bonus:r,indexRoute:i,collectPoints:o})=>{const[l,a]=S.useState(0),{url:s,setUrl:u}=S.useContext(Pn),[f,p]=S.useState(Object.values(o)[0]),h=[...t];for(;h.length<5;)h.push({name:"",min:0,max:0,item:""});const g=15.1,v=1.4,y=()=>{l<-5&&a(l+g+v)},x=()=>{l>-(t.length-3)*(g+v)&&a(l-g-v)},d=(m,w)=>{Ye("startCollect",{index:m,route:w})},c=m=>{p(o[m])};return z(E1,{children:[z("div",{className:"left",children:[A("img",{className:"arrow arrowLeft",src:Z.arrow,alt:"",onClick:y}),A("div",{className:"listItem",children:A("div",{className:"sliderContainer",style:{transform:`translateX(${l}vh)`},children:h.map((m,w)=>z("div",{className:m.name==""?"subItem subItemVoid":"subItem",children:[A("div",{className:"name",children:m.name}),z("div",{className:"amount",children:[m.min>0?m.min+"x":"","  ",m.max?`- ${m.max}x`:""]}),A("img",{src:s+m.item+".png",alt:""})]},w))})}),A("img",{className:"arrow ",src:Z.arrow,alt:"",onClick:x})]}),z("div",{className:"right",children:[z("div",{className:"topRight",children:[z("div",{className:"info",children:[A("img",{src:Z.info,alt:""}),z("div",{className:"description",children:[z("p",{children:["CHANCE DE ACIONAR A POLICIA:"," ",A("b",{className:"red",children:e?"ATIVADO":"DESATIVADO"})]}),z("p",{children:["BONÚS DE DOMINAÇÃO: ",A("b",{className:"blue",children:r>0?r+"%":"NÃO"})]})]})]}),z("div",{className:"info",children:[A("img",{src:Z.clockFull,alt:""}),A("div",{className:"description",children:z("p",{children:["QUANTIDADE DE PONTOS DE COLETA:"," ",A("b",{className:"yellow",children:f})]})})]})]}),A("div",{className:"bottomRight",children:n.map((m,w)=>z("button",{onClick:()=>d(i,m),onMouseEnter:()=>c(m),children:["INICIAR ROTA ",m]}))})]})]})},R1=()=>{const[e,t]=S.useState([]);return S.useEffect(()=>{Ye("requestCollect",{}).then(n=>{t(n||[])})},[]),z(C1,{children:[A("div",{className:"top",children:A("h1",{children:"COLETA"})}),A("div",{className:"list",children:e.map((n,r)=>A(N1,{alertPolice:n.alertPolice,itens:n.itens,routes:n.routes,bonus:n.bonus,indexRoute:n.index,collectPoints:n.collectPoints},r))})]})},P1=Xe.div`
    display: flex;
    align-items: center;
    flex-direction: column;
    gap: 1vh;
    .top {
        width: 149.7866vh;

        display: flex;
        align-items: center;
        justify-content: flex-start;
        gap: 2vh;

        h1 {
            font-size: 2.7925vh;
            font-style: normal;
            font-weight: 700;
            line-height: normal;
            background: linear-gradient(
                90deg,
                #fff 0%,
                rgba(255, 255, 255, 0) 154.87%
            );
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        img {
            width: 126.8vh;
        }
    }

    .noDelivery {
        width: 149.7866vh;
        height: 74.774vh;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 2vh;

        h1 {
            font-size: 2.7925vh;
            font-style: normal;
            font-weight: 700;
            line-height: normal;
            background: linear-gradient(
                90deg,
                #fff 0%,
                rgba(255, 255, 255, 0) 154.87%
            );
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    }

    .list {
        width: 148.7866vh;
        height: 70.1vh;
        overflow: auto;
    }
`,T1=Xe.div`
    display: flex;
    margin-bottom: 1vh;
    width: 100%;
    height: 15.7vh;
    border-radius: 1.0048vh;
    background: rgba(0, 0, 0, .25);

    align-items: center;
    .left {
        display: flex;
        align-items: center;
        justify-content: center;

        .arrowLeft {
            transform: scale(-1);
        }

        .arrow {
            opacity: 0.5;
            transition: all 0.2s ease-in-out;
            cursor: pointer;

            &:hover {
                opacity: 1;
            }
        }

        .listItem {
            width: calc(5 * 12.8vh + 3 * 1.4vh);
            overflow: hidden;
            position: relative;

            .sliderContainer {
                display: flex;
                transition: all 0.2s ease-in-out;
                width: calc(5 * 12.8vh + 40 * 1.4vh);
            }

            .subItem {
                width: 12.8vh;
                height: 13.12vh;
                transition: all 0.2s ease-in-out;
                margin-right: 1vh;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 1vh;
                background: radial-gradient(
                        60.71% 212.5% at 50% 50%,
                        rgba(61, 61, 61, 0.8) 0%,
                        rgba(35, 35, 35, 0.8) 100%
                    ),
                    rgba(0, 0, 0, 0.75);

                position: relative;

                color: rgba(255, 255, 255, 0.4);
                font-size: 1.3362vh;
                font-style: normal;
                font-weight: 600;
                line-height: normal;

                .name {
                    position: absolute;
                    bottom: 1vh;
                }

                .amount {
                    position: absolute;
                    top: 1vh;
                    left: 1vh;
                }

                img {
                    width: 60%;
                }
            }

            .payment{
                    position: absolute;
                    top: 1vh;
                    right: 1vh;
                }
            .subItemVoid {
                border-radius: 1vh;
                border: 0.1vh solid rgba(255, 255, 255, 0.1);
                background: radial-gradient(
                        55.5% 100.01% at 50% 50%,
                        rgba(0, 0, 0, 0.15) 0%,
                        rgba(0, 0, 0, 0) 100%
                    ),
                    rgba(11, 11, 11, 0.55);
            }
        }
    }

    .right {
        width: 91vh;

        .topRight {
            width: 74vh;
            height: 8.16vh;
            border-radius: 1vh;
            background: radial-gradient(
                    60.71% 212.5% at 50% 50%,
                    rgba(61, 61, 61, 0.8) 0%,
                    rgba(35, 35, 35, 0.8) 100%
                ),
                rgba(0, 0, 0, 0.75);

            display: flex;
            align-items: center;

            .info {
                width: 50%;
                display: flex;
                align-items: center;
                justify-content: center;

                img {
                    width: 2.7553vh;
                    height: 2.7553vh;
                    margin-right: 2vh;
                    flex-shrink: 0;
                }

                .description {
                    p {
                        color: rgba(255, 255, 255, 0.4);
                        text-align: center;
                        font-size: 1.069vh;
                        font-style: normal;
                        font-weight: 600;
                        line-height: normal;
                        display: flex;
                        align-items: center;
                        gap: 0.5vh;
                    }

                    .red {
                        color: #ea3e3e;
                        font-size: 1.069vh;
                        font-style: normal;
                        font-weight: 600;
                        line-height: normal;
                    }

                    .blue {
                        color: #405aa7;
                        font-size: 1.069vh;
                        font-style: normal;
                        font-weight: 600;
                        line-height: normal;
                    }

                    .yellow {
                        color: #e3d346;
                        text-align: center;
                        font-size: 2.6663vh;
                        font-style: normal;
                        font-weight: 600;
                        line-height: normal;
                    }
                }
            }
        }

        .bottomRight {
            width: 74vh;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 1vh;
            margin-top: 1vh;

            button {
                flex: 1;
                height: 4vh;
                border-radius: .6vh;
                background: linear-gradient(
                    270deg,
                    #3f3f3f 0%,
                    rgba(63, 63, 63, 0) 125.41%
                );
                border: 0;

                color: #fff;
                text-align: center;
                font-size: 1.7153vh;
                font-style: normal;
                font-weight: 600;
                line-height: normal;
                transition: all 0.2s ease-in-out;

                &:hover {
                    cursor: pointer;
                    border: 0;
                    background: linear-gradient(
                        270deg,
                        #ffda00 -2.56%,
                        rgba(255, 218, 0, 0) 189.13%
                    );
                    color: #1a1a1a;
                    box-shadow: 0vh 0vh 1.7vh 0vh rgba(255, 218, 0, 0.43);
                }
            }
        }
    }
`,I1=({alertPolice:e,itens:t,indexRoute:n,deliveryPoints:r})=>{const[i,o]=S.useState(0),{url:l,setUrl:a}=S.useContext(Pn);S.useState(Object.values(r)[0]);const s=15.1,u=1.4,f=()=>{i<-5&&o(i+s+u)},p=()=>{i>-(t.length-3)*(s+u)&&o(i-s-u)},h=g=>{Ye("startDelivery",{index:g})};return z(T1,{children:[z("div",{className:"left",children:[A("img",{className:"arrow arrowLeft",src:Z.arrow,alt:"",onClick:f}),A("div",{className:"listItem",children:A("div",{className:"sliderContainer",style:{transform:`translateX(${i}vh)`},children:t.map((g,v)=>z("div",{className:"subItem",children:[A("div",{className:"name",children:g.name}),z("div",{className:"amount",children:[g.min,"x  ",g.max?`- ${g.max}x`:""]}),z("div",{className:"payment",children:["R$",g.payment]}),A("img",{src:l+g.item+".png",alt:""})]},v))})}),A("img",{className:"arrow ",src:Z.arrow,alt:"",onClick:p})]}),z("div",{className:"right",children:[z("div",{className:"topRight",children:[z("div",{className:"info",children:[A("img",{src:Z.info,alt:""}),A("div",{className:"description",children:z("p",{children:["CHANCE DE ACIONAR A POLICIA:"," ",A("b",{className:"red",children:e?"ATIVADO":"DESATIVADO"})]})})]}),z("div",{className:"info",children:[A("img",{src:Z.clockFull,alt:""}),A("div",{className:"description",children:z("p",{children:["QUANTIDADE DE PONTOS DE COLETA:"," ",A("b",{className:"yellow",children:r})]})})]})]}),A("div",{className:"bottomRight",children:A("button",{onClick:()=>h(n),children:"INICIAR ROTA"})})]})]})},z1=()=>{const[e,t]=S.useState([]);return S.useEffect(()=>{Ye("requestDelivery",{}).then(n=>{t(n)})},[]),A(P1,{children:e.length>=1?z(qt,{children:[A("div",{className:"top",children:A("h1",{children:"ENTREGA"})}),A("div",{className:"list",children:e.map((n,r)=>A(I1,{alertPolice:n.alertPolice,itens:n.itens,indexRoute:n.index,deliveryPoints:n.deliveryPoints},r))})]}):A(qt,{children:A("div",{className:"noDelivery",children:A("h1",{children:"SUA FACÇÃO NÃO REALIZA ENTREGAS"})})})})},L1=Xe.div`
    .top {
        width: 147rem;

        .flex {
            display: flex;
            width: 100%;
            justify-content: center;
            gap: 2rem;

            button {
                background: transparent;
                border: 0;
                color: rgba(255, 255, 255, 0.25);
                text-align: center;
                font-size: 2.591rem;
                font-style: normal;
                font-weight: 600;
                line-height: normal;
            }

            .selected {
                color: #fff;
                text-align: center;
                font-size: 2.591rem;
                font-style: normal;
                font-weight: 700;
                line-height: normal;
                background: linear-gradient(
                        87deg,
                        #4b6dd5 8.66%,
                        rgba(75, 109, 213, 0) 159.1%
                    ),
                    #fff;
                background-clip: text;
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
            }
        }

        img {
            width: 100%;
            margin-top: 2rem;
        }
    }

    .myPos {
        width: 99%;
        height: 5rem;
        border: 1px solid #4b6dd5;
        background: linear-gradient(
                20deg,
                #4b6dd5 -4.5%,
                rgba(75, 109, 213, 0) 163.37%
            ),
            rgba(0, 0, 0, 0.2);
        box-shadow: 0px 0px 17px 0px rgba(75, 109, 213, 0.43);

        display: grid;
        grid-template-columns: 0.5fr 2fr 1fr 1fr 1fr;
        margin-top: 0.4rem;
        align-items: center;
        color: #fff;
        font-size: 1.8083rem;
        font-style: normal;
        font-weight: 600;
        line-height: normal;
        .pos {
            width: 4.9rem;
            height: 4.9rem;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: #fff;
            text-align: center;
            font-size: 2.6831rem;
            font-style: normal;
            font-weight: 800;
            line-height: normal;
        }
    }
`,O1=Xe.table`
    width: 100%;

    thead {
        width: 100%;

        tr {
            display: grid;
            width: 99.5%;
            grid-template-columns: 0.5fr 2fr 1fr 1fr 1fr;
            color: #fff;
            font-size: 1.6178rem;
            font-style: normal;
            font-weight: 400;
            line-height: normal;
            text-align: left;
        }
        th{
            img{
                width: 2.5rem;
                height: 1rem;
                opacity: .5;
                transform: rotate(180deg);
                transition: all .2s ease-in-out;
                &:hover{
                    cursor: pointer;
                    opacity: .75;
                }
            }
        }

        .filterSelected{
            img{
                opacity: 1;
                transform: rotate(0);
            }
        }
    }

    tbody {
        width: 100%;
        height: 56.7rem;
        overflow: auto;
        display: block;

        tr {
            display: grid;
            grid-template-columns: 0.5fr 2fr 1fr 1fr 1fr;
            align-items: center;
            width: 99.5%;
            height: 5rem;
            border: 0.1276rem solid rgba(255, 255, 255, 0.25);
            background: radial-gradient(
                    76.47% 102.65% at 50% 78.53%,
                    rgba(255, 255, 255, 0.1) 0%,
                    rgba(255, 255, 255, 0) 100%
                ),
                rgba(0, 0, 0, 0.35);
            color: #fff;
            font-size: 1.8083rem;
            font-style: normal;
            font-weight: 600;
            line-height: normal;
            margin-bottom: 0.7rem;

            &:nth-child(1) .pos {
                background: url(${Z.goldCoin});
                background-size: 100% 100%;
                color: #fff0d2;
                text-align: center;
                font-size: 2.6831rem;
                font-style: normal;
                font-weight: 800;
                line-height: normal;
            }
            &:nth-child(2) .pos {
                background: url(${Z.silverCoin});
                background-size: 100% 100%;
                color: #393939;
                text-align: center;
                font-size: 26.831px;
                font-style: normal;
                font-weight: 800;
                line-height: normal;
            }
            &:nth-child(3) .pos {
                background: url(${Z.bronzeCoin});
                background-size: 100% 100%;
                text-align: center;
                font-size: 2.6831rem;
                font-style: normal;
                font-weight: 800;
                line-height: normal;
            }
        }

        .pos {
            width: 4.9rem;
            height: 4.9rem;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: #fff;
            text-align: center;
            font-size: 2.6831rem;
            font-style: normal;
            font-weight: 800;
            line-height: normal;
        }
    }
`,_1=()=>z(L1,{children:[z("div",{className:"top",children:[z("div",{className:"flex",children:[A("button",{className:"selected",children:"COLETA"}),A("button",{children:"ENTREGA"})]}),A("img",{src:np.bar5,alt:""})]}),z(O1,{children:[A("thead",{children:z("tr",{children:[A("th",{children:"Posição"}),A("th",{children:"Nome"}),z("th",{className:"filterSelected",children:["DIÁRIO ",A("img",{src:Z.arrowFilter,alt:""})," "]}),z("th",{children:["SEMANAL ",A("img",{src:Z.arrowFilter,alt:""})," "]}),z("th",{children:["MENSAL ",A("img",{src:Z.arrowFilter,alt:""})," "]})]})}),A("tbody",{children:z("tr",{children:[A("td",{className:"pos",children:"1"}),A("td",{children:"João"}),A("td",{children:"10"}),A("td",{children:"20"}),A("td",{children:"30"})]})})]}),z("div",{className:"myPos",children:[A("td",{className:"pos",children:"55"}),A("td",{children:"João"}),A("td",{children:"10"}),A("td",{children:"20"}),A("td",{children:"30"})]})]});function rp(e){var t,n,r="";if(typeof e=="string"||typeof e=="number")r+=e;else if(typeof e=="object")if(Array.isArray(e))for(t=0;t<e.length;t++)e[t]&&(n=rp(e[t]))&&(r&&(r+=" "),r+=n);else for(t in e)e[t]&&(r&&(r+=" "),r+=t);return r}function Vt(){for(var e,t,n=0,r="";n<arguments.length;)(e=arguments[n++])&&(t=rp(e))&&(r&&(r+=" "),r+=t);return r}const Or=e=>typeof e=="number"&&!isNaN(e),Sn=e=>typeof e=="string",We=e=>typeof e=="function",Wi=e=>Sn(e)||We(e)?e:null,zl=e=>S.isValidElement(e)||Sn(e)||We(e)||Or(e);function M1(e,t,n){n===void 0&&(n=300);const{scrollHeight:r,style:i}=e;requestAnimationFrame(()=>{i.minHeight="initial",i.height=r+"px",i.transition=`all ${n}ms`,requestAnimationFrame(()=>{i.height="0",i.padding="0",i.margin="0",setTimeout(t,n)})})}function Zo(e){let{enter:t,exit:n,appendPosition:r=!1,collapse:i=!0,collapseDuration:o=300}=e;return function(l){let{children:a,position:s,preventExitTransition:u,done:f,nodeRef:p,isIn:h}=l;const g=r?`${t}--${s}`:t,v=r?`${n}--${s}`:n,y=S.useRef(0);return S.useLayoutEffect(()=>{const x=p.current,d=g.split(" "),c=m=>{m.target===p.current&&(x.dispatchEvent(new Event("d")),x.removeEventListener("animationend",c),x.removeEventListener("animationcancel",c),y.current===0&&m.type!=="animationcancel"&&x.classList.remove(...d))};x.classList.add(...d),x.addEventListener("animationend",c),x.addEventListener("animationcancel",c)},[]),S.useEffect(()=>{const x=p.current,d=()=>{x.removeEventListener("animationend",d),i?M1(x,f,o):f()};h||(u?d():(y.current=1,x.className+=` ${v}`,x.addEventListener("animationend",d)))},[h]),G.createElement(G.Fragment,null,a)}}function yc(e,t){return e!=null?{content:e.content,containerId:e.props.containerId,id:e.props.toastId,theme:e.props.theme,type:e.props.type,data:e.props.data||{},isLoading:e.props.isLoading,icon:e.props.icon,status:t}:{}}const it={list:new Map,emitQueue:new Map,on(e,t){return this.list.has(e)||this.list.set(e,[]),this.list.get(e).push(t),this},off(e,t){if(t){const n=this.list.get(e).filter(r=>r!==t);return this.list.set(e,n),this}return this.list.delete(e),this},cancelEmit(e){const t=this.emitQueue.get(e);return t&&(t.forEach(clearTimeout),this.emitQueue.delete(e)),this},emit(e){this.list.has(e)&&this.list.get(e).forEach(t=>{const n=setTimeout(()=>{t(...[].slice.call(arguments,1))},0);this.emitQueue.has(e)||this.emitQueue.set(e,[]),this.emitQueue.get(e).push(n)})}},Ii=e=>{let{theme:t,type:n,...r}=e;return G.createElement("svg",{viewBox:"0 0 24 24",width:"100%",height:"100%",fill:t==="colored"?"currentColor":`var(--toastify-icon-color-${n})`,...r})},Ll={info:function(e){return G.createElement(Ii,{...e},G.createElement("path",{d:"M12 0a12 12 0 1012 12A12.013 12.013 0 0012 0zm.25 5a1.5 1.5 0 11-1.5 1.5 1.5 1.5 0 011.5-1.5zm2.25 13.5h-4a1 1 0 010-2h.75a.25.25 0 00.25-.25v-4.5a.25.25 0 00-.25-.25h-.75a1 1 0 010-2h1a2 2 0 012 2v4.75a.25.25 0 00.25.25h.75a1 1 0 110 2z"}))},warning:function(e){return G.createElement(Ii,{...e},G.createElement("path",{d:"M23.32 17.191L15.438 2.184C14.728.833 13.416 0 11.996 0c-1.42 0-2.733.833-3.443 2.184L.533 17.448a4.744 4.744 0 000 4.368C1.243 23.167 2.555 24 3.975 24h16.05C22.22 24 24 22.044 24 19.632c0-.904-.251-1.746-.68-2.44zm-9.622 1.46c0 1.033-.724 1.823-1.698 1.823s-1.698-.79-1.698-1.822v-.043c0-1.028.724-1.822 1.698-1.822s1.698.79 1.698 1.822v.043zm.039-12.285l-.84 8.06c-.057.581-.408.943-.897.943-.49 0-.84-.367-.896-.942l-.84-8.065c-.057-.624.25-1.095.779-1.095h1.91c.528.005.84.476.784 1.1z"}))},success:function(e){return G.createElement(Ii,{...e},G.createElement("path",{d:"M12 0a12 12 0 1012 12A12.014 12.014 0 0012 0zm6.927 8.2l-6.845 9.289a1.011 1.011 0 01-1.43.188l-4.888-3.908a1 1 0 111.25-1.562l4.076 3.261 6.227-8.451a1 1 0 111.61 1.183z"}))},error:function(e){return G.createElement(Ii,{...e},G.createElement("path",{d:"M11.983 0a12.206 12.206 0 00-8.51 3.653A11.8 11.8 0 000 12.207 11.779 11.779 0 0011.8 24h.214A12.111 12.111 0 0024 11.791 11.766 11.766 0 0011.983 0zM10.5 16.542a1.476 1.476 0 011.449-1.53h.027a1.527 1.527 0 011.523 1.47 1.475 1.475 0 01-1.449 1.53h-.027a1.529 1.529 0 01-1.523-1.47zM11 12.5v-6a1 1 0 012 0v6a1 1 0 11-2 0z"}))},spinner:function(){return G.createElement("div",{className:"Toastify__spinner"})}};function b1(e){const[,t]=S.useReducer(g=>g+1,0),[n,r]=S.useState([]),i=S.useRef(null),o=S.useRef(new Map).current,l=g=>n.indexOf(g)!==-1,a=S.useRef({toastKey:1,displayedToast:0,count:0,queue:[],props:e,containerId:null,isToastActive:l,getToast:g=>o.get(g)}).current;function s(g){let{containerId:v}=g;const{limit:y}=a.props;!y||v&&a.containerId!==v||(a.count-=a.queue.length,a.queue=[])}function u(g){r(v=>g==null?[]:v.filter(y=>y!==g))}function f(){const{toastContent:g,toastProps:v,staleId:y}=a.queue.shift();h(g,v,y)}function p(g,v){let{delay:y,staleId:x,...d}=v;if(!zl(g)||function(Q){return!i.current||a.props.enableMultiContainer&&Q.containerId!==a.props.containerId||o.has(Q.toastId)&&Q.updateId==null}(d))return;const{toastId:c,updateId:m,data:w}=d,{props:C}=a,T=()=>u(c),L=m==null;L&&a.count++;const R={...C,style:C.toastStyle,key:a.toastKey++,...Object.fromEntries(Object.entries(d).filter(Q=>{let[te,ne]=Q;return ne!=null})),toastId:c,updateId:m,data:w,closeToast:T,isIn:!1,className:Wi(d.className||C.toastClassName),bodyClassName:Wi(d.bodyClassName||C.bodyClassName),progressClassName:Wi(d.progressClassName||C.progressClassName),autoClose:!d.isLoading&&(B=d.autoClose,U=C.autoClose,B===!1||Or(B)&&B>0?B:U),deleteToast(){const Q=yc(o.get(c),"removed");o.delete(c),it.emit(4,Q);const te=a.queue.length;if(a.count=c==null?a.count-a.displayedToast:a.count-1,a.count<0&&(a.count=0),te>0){const ne=c==null?a.props.limit:1;if(te===1||ne===1)a.displayedToast++,f();else{const ce=ne>te?te:ne;a.displayedToast=ce;for(let de=0;de<ce;de++)f()}}else t()}};var B,U;R.iconOut=function(Q){let{theme:te,type:ne,isLoading:ce,icon:de}=Q,ae=null;const N={theme:te,type:ne};return de===!1||(We(de)?ae=de(N):S.isValidElement(de)?ae=S.cloneElement(de,N):Sn(de)||Or(de)?ae=de:ce?ae=Ll.spinner():(b=>b in Ll)(ne)&&(ae=Ll[ne](N))),ae}(R),We(d.onOpen)&&(R.onOpen=d.onOpen),We(d.onClose)&&(R.onClose=d.onClose),R.closeButton=C.closeButton,d.closeButton===!1||zl(d.closeButton)?R.closeButton=d.closeButton:d.closeButton===!0&&(R.closeButton=!zl(C.closeButton)||C.closeButton);let oe=g;S.isValidElement(g)&&!Sn(g.type)?oe=S.cloneElement(g,{closeToast:T,toastProps:R,data:w}):We(g)&&(oe=g({closeToast:T,toastProps:R,data:w})),C.limit&&C.limit>0&&a.count>C.limit&&L?a.queue.push({toastContent:oe,toastProps:R,staleId:x}):Or(y)?setTimeout(()=>{h(oe,R,x)},y):h(oe,R,x)}function h(g,v,y){const{toastId:x}=v;y&&o.delete(y);const d={content:g,props:v};o.set(x,d),r(c=>[...c,x].filter(m=>m!==y)),it.emit(4,yc(d,d.props.updateId==null?"added":"updated"))}return S.useEffect(()=>(a.containerId=e.containerId,it.cancelEmit(3).on(0,p).on(1,g=>i.current&&u(g)).on(5,s).emit(2,a),()=>{o.clear(),it.emit(3,a)}),[]),S.useEffect(()=>{a.props=e,a.isToastActive=l,a.displayedToast=n.length}),{getToastToRender:function(g){const v=new Map,y=Array.from(o.values());return e.newestOnTop&&y.reverse(),y.forEach(x=>{const{position:d}=x.props;v.has(d)||v.set(d,[]),v.get(d).push(x)}),Array.from(v,x=>g(x[0],x[1]))},containerRef:i,isToastActive:l}}function wc(e){return e.targetTouches&&e.targetTouches.length>=1?e.targetTouches[0].clientX:e.clientX}function Ac(e){return e.targetTouches&&e.targetTouches.length>=1?e.targetTouches[0].clientY:e.clientY}function U1(e){const[t,n]=S.useState(!1),[r,i]=S.useState(!1),o=S.useRef(null),l=S.useRef({start:0,x:0,y:0,delta:0,removalDistance:0,canCloseOnClick:!0,canDrag:!1,boundingRect:null,didMove:!1}).current,a=S.useRef(e),{autoClose:s,pauseOnHover:u,closeToast:f,onClick:p,closeOnClick:h}=e;function g(w){if(e.draggable){w.nativeEvent.type==="touchstart"&&w.nativeEvent.preventDefault(),l.didMove=!1,document.addEventListener("mousemove",d),document.addEventListener("mouseup",c),document.addEventListener("touchmove",d),document.addEventListener("touchend",c);const C=o.current;l.canCloseOnClick=!0,l.canDrag=!0,l.boundingRect=C.getBoundingClientRect(),C.style.transition="",l.x=wc(w.nativeEvent),l.y=Ac(w.nativeEvent),e.draggableDirection==="x"?(l.start=l.x,l.removalDistance=C.offsetWidth*(e.draggablePercent/100)):(l.start=l.y,l.removalDistance=C.offsetHeight*(e.draggablePercent===80?1.5*e.draggablePercent:e.draggablePercent/100))}}function v(w){if(l.boundingRect){const{top:C,bottom:T,left:L,right:R}=l.boundingRect;w.nativeEvent.type!=="touchend"&&e.pauseOnHover&&l.x>=L&&l.x<=R&&l.y>=C&&l.y<=T?x():y()}}function y(){n(!0)}function x(){n(!1)}function d(w){const C=o.current;l.canDrag&&C&&(l.didMove=!0,t&&x(),l.x=wc(w),l.y=Ac(w),l.delta=e.draggableDirection==="x"?l.x-l.start:l.y-l.start,l.start!==l.x&&(l.canCloseOnClick=!1),C.style.transform=`translate${e.draggableDirection}(${l.delta}px)`,C.style.opacity=""+(1-Math.abs(l.delta/l.removalDistance)))}function c(){document.removeEventListener("mousemove",d),document.removeEventListener("mouseup",c),document.removeEventListener("touchmove",d),document.removeEventListener("touchend",c);const w=o.current;if(l.canDrag&&l.didMove&&w){if(l.canDrag=!1,Math.abs(l.delta)>l.removalDistance)return i(!0),void e.closeToast();w.style.transition="transform 0.2s, opacity 0.2s",w.style.transform=`translate${e.draggableDirection}(0)`,w.style.opacity="1"}}S.useEffect(()=>{a.current=e}),S.useEffect(()=>(o.current&&o.current.addEventListener("d",y,{once:!0}),We(e.onOpen)&&e.onOpen(S.isValidElement(e.children)&&e.children.props),()=>{const w=a.current;We(w.onClose)&&w.onClose(S.isValidElement(w.children)&&w.children.props)}),[]),S.useEffect(()=>(e.pauseOnFocusLoss&&(document.hasFocus()||x(),window.addEventListener("focus",y),window.addEventListener("blur",x)),()=>{e.pauseOnFocusLoss&&(window.removeEventListener("focus",y),window.removeEventListener("blur",x))}),[e.pauseOnFocusLoss]);const m={onMouseDown:g,onTouchStart:g,onMouseUp:v,onTouchEnd:v};return s&&u&&(m.onMouseEnter=x,m.onMouseLeave=y),h&&(m.onClick=w=>{p&&p(w),l.canCloseOnClick&&f()}),{playToast:y,pauseToast:x,isRunning:t,preventExitTransition:r,toastRef:o,eventHandlers:m}}function ip(e){let{closeToast:t,theme:n,ariaLabel:r="close"}=e;return G.createElement("button",{className:`Toastify__close-button Toastify__close-button--${n}`,type:"button",onClick:i=>{i.stopPropagation(),t(i)},"aria-label":r},G.createElement("svg",{"aria-hidden":"true",viewBox:"0 0 14 16"},G.createElement("path",{fillRule:"evenodd",d:"M7.71 8.23l3.75 3.75-1.48 1.48-3.75-3.75-3.75 3.75L1 11.98l3.75-3.75L1 4.48 2.48 3l3.75 3.75L9.98 3l1.48 1.48-3.75 3.75z"})))}function j1(e){let{delay:t,isRunning:n,closeToast:r,type:i="default",hide:o,className:l,style:a,controlledProgress:s,progress:u,rtl:f,isIn:p,theme:h}=e;const g=o||s&&u===0,v={...a,animationDuration:`${t}ms`,animationPlayState:n?"running":"paused",opacity:g?0:1};s&&(v.transform=`scaleX(${u})`);const y=Vt("Toastify__progress-bar",s?"Toastify__progress-bar--controlled":"Toastify__progress-bar--animated",`Toastify__progress-bar-theme--${h}`,`Toastify__progress-bar--${i}`,{"Toastify__progress-bar--rtl":f}),x=We(l)?l({rtl:f,type:i,defaultClassName:y}):Vt(y,l);return G.createElement("div",{role:"progressbar","aria-hidden":g?"true":"false","aria-label":"notification timer",className:x,style:v,[s&&u>=1?"onTransitionEnd":"onAnimationEnd"]:s&&u<1?null:()=>{p&&r()}})}const D1=e=>{const{isRunning:t,preventExitTransition:n,toastRef:r,eventHandlers:i}=U1(e),{closeButton:o,children:l,autoClose:a,onClick:s,type:u,hideProgressBar:f,closeToast:p,transition:h,position:g,className:v,style:y,bodyClassName:x,bodyStyle:d,progressClassName:c,progressStyle:m,updateId:w,role:C,progress:T,rtl:L,toastId:R,deleteToast:B,isIn:U,isLoading:oe,iconOut:Q,closeOnClick:te,theme:ne}=e,ce=Vt("Toastify__toast",`Toastify__toast-theme--${ne}`,`Toastify__toast--${u}`,{"Toastify__toast--rtl":L},{"Toastify__toast--close-on-click":te}),de=We(v)?v({rtl:L,position:g,type:u,defaultClassName:ce}):Vt(ce,v),ae=!!T||!a,N={closeToast:p,type:u,theme:ne};let b=null;return o===!1||(b=We(o)?o(N):S.isValidElement(o)?S.cloneElement(o,N):ip(N)),G.createElement(h,{isIn:U,done:B,position:g,preventExitTransition:n,nodeRef:r},G.createElement("div",{id:R,onClick:s,className:de,...i,style:y,ref:r},G.createElement("div",{...U&&{role:C},className:We(x)?x({type:u}):Vt("Toastify__toast-body",x),style:d},Q!=null&&G.createElement("div",{className:Vt("Toastify__toast-icon",{"Toastify--animate-icon Toastify__zoom-enter":!oe})},Q),G.createElement("div",null,l)),b,G.createElement(j1,{...w&&!ae?{key:`pb-${w}`}:{},rtl:L,theme:ne,delay:a,isRunning:t,isIn:U,closeToast:p,hide:f,type:u,style:m,className:c,controlledProgress:ae,progress:T||0})))},qo=function(e,t){return t===void 0&&(t=!1),{enter:`Toastify--animate Toastify__${e}-enter`,exit:`Toastify--animate Toastify__${e}-exit`,appendPosition:t}},F1=Zo(qo("bounce",!0));Zo(qo("slide",!0));Zo(qo("zoom"));Zo(qo("flip"));const Ua=S.forwardRef((e,t)=>{const{getToastToRender:n,containerRef:r,isToastActive:i}=b1(e),{className:o,style:l,rtl:a,containerId:s}=e;function u(f){const p=Vt("Toastify__toast-container",`Toastify__toast-container--${f}`,{"Toastify__toast-container--rtl":a});return We(o)?o({position:f,rtl:a,defaultClassName:p}):Vt(p,Wi(o))}return S.useEffect(()=>{t&&(t.current=r.current)},[]),G.createElement("div",{ref:r,className:"Toastify",id:s},n((f,p)=>{const h=p.length?{...l}:{...l,pointerEvents:"none"};return G.createElement("div",{className:u(f),style:h,key:`container-${f}`},p.map((g,v)=>{let{content:y,props:x}=g;return G.createElement(D1,{...x,isIn:i(x.toastId),style:{...x.style,"--nth":v+1,"--len":p.length},key:`toast-${x.key}`},y)}))}))});Ua.displayName="ToastContainer",Ua.defaultProps={position:"top-right",transition:F1,autoClose:5e3,closeButton:ip,pauseOnHover:!0,pauseOnFocusLoss:!0,closeOnClick:!0,draggable:!0,draggablePercent:80,draggableDirection:"x",role:"alert",theme:"light"};let Ol,fn=new Map,xr=[],$1=1;function op(){return""+$1++}function B1(e){return e&&(Sn(e.toastId)||Or(e.toastId))?e.toastId:op()}function _r(e,t){return fn.size>0?it.emit(0,e,t):xr.push({content:e,options:t}),t.toastId}function So(e,t){return{...t,type:t&&t.type||e,toastId:B1(t)}}function zi(e){return(t,n)=>_r(t,So(e,n))}function ie(e,t){return _r(e,So("default",t))}ie.loading=(e,t)=>_r(e,So("default",{isLoading:!0,autoClose:!1,closeOnClick:!1,closeButton:!1,draggable:!1,...t})),ie.promise=function(e,t,n){let r,{pending:i,error:o,success:l}=t;i&&(r=Sn(i)?ie.loading(i,n):ie.loading(i.render,{...n,...i}));const a={isLoading:null,autoClose:null,closeOnClick:null,closeButton:null,draggable:null},s=(f,p,h)=>{if(p==null)return void ie.dismiss(r);const g={type:f,...a,...n,data:h},v=Sn(p)?{render:p}:p;return r?ie.update(r,{...g,...v}):ie(v.render,{...g,...v}),h},u=We(e)?e():e;return u.then(f=>s("success",l,f)).catch(f=>s("error",o,f)),u},ie.success=zi("success"),ie.info=zi("info"),ie.error=zi("error"),ie.warning=zi("warning"),ie.warn=ie.warning,ie.dark=(e,t)=>_r(e,So("default",{theme:"dark",...t})),ie.dismiss=e=>{fn.size>0?it.emit(1,e):xr=xr.filter(t=>e!=null&&t.options.toastId!==e)},ie.clearWaitingQueue=function(e){return e===void 0&&(e={}),it.emit(5,e)},ie.isActive=e=>{let t=!1;return fn.forEach(n=>{n.isToastActive&&n.isToastActive(e)&&(t=!0)}),t},ie.update=function(e,t){t===void 0&&(t={}),setTimeout(()=>{const n=function(r,i){let{containerId:o}=i;const l=fn.get(o||Ol);return l&&l.getToast(r)}(e,t);if(n){const{props:r,content:i}=n,o={delay:100,...r,...t,toastId:t.toastId||e,updateId:op()};o.toastId!==e&&(o.staleId=e);const l=o.render||i;delete o.render,_r(l,o)}},0)},ie.done=e=>{ie.update(e,{progress:1})},ie.onChange=e=>(it.on(4,e),()=>{it.off(4,e)}),ie.POSITION={TOP_LEFT:"top-left",TOP_RIGHT:"top-right",TOP_CENTER:"top-center",BOTTOM_LEFT:"bottom-left",BOTTOM_RIGHT:"bottom-right",BOTTOM_CENTER:"bottom-center"},ie.TYPE={INFO:"info",SUCCESS:"success",WARNING:"warning",ERROR:"error",DEFAULT:"default"},it.on(2,e=>{Ol=e.containerId||e,fn.set(Ol,e),xr.forEach(t=>{it.emit(0,t.content,t.options)}),xr=[]}).on(3,e=>{fn.delete(e.containerId||e),fn.size===0&&it.off(0).off(1).off(5)});const H1=Xe.div`
    width: 99vh;
    height: 43vh;
    margin-top: 10vh;
    margin-bottom: 22vh;
    display: flex;
    align-items: center;
    gap: 3.8vh;

    .info {
        width: 47.6vh;
        height: 59.6vh;
        border-radius: 1vh;
        border: 0.1vh solid rgba(255, 255, 255, 0.05);
        background: radial-gradient(
                60.71% 212.5% at 50% 50%,
                rgba(61, 61, 61, 0.4) 0%,
                rgba(35, 35, 35, 0.4) 100%
            ),
            rgba(0, 0, 0, 0.15);
        padding: 4vh;
        position: relative;

        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: center;

        .title {
            text-align: center;
            font-size: 3.3874vh;
            font-style: normal;
            font-weight: 700;
            line-height: normal;
            background: linear-gradient(
                90deg,
                #fff 0.05%,
                rgba(255, 255, 255, 0) 151.31%
            );
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        p {
            color: #fff;
            text-align: center;
            font-size: 1.6396vh;
            font-style: normal;
            font-weight: 400;
            line-height: normal;
        }

        button {
            width: 19.5vh;
            height: 5.7vh;
            color: #fff;
            text-align: center;
            font-size: 2.042vh;
            font-style: normal;
            font-weight: 800;
            line-height: normal;
            border-radius: 6px;
            border: 0;
            background: linear-gradient(
                270deg,
                #3f3f3f 0%,
                rgba(63, 63, 63, 0) 125.41%
            );
            margin-top: 2.5vh;
            cursor: pointer;
            transition: all 0.2s ease-in-out;

            &:hover {
                border: 0;
                border-radius: 10px;
                background: linear-gradient(
                    270deg,
                    #ffda00 -2.56%,
                    rgba(255, 218, 0, 0) 189.13%
                );
                color: #1a1a1a;
                box-shadow: 0px 0px 17px 0px rgba(255, 218, 0, 0.43);
            }
        }

        img {
            height: 25.6807vh;

            filter: drop-shadow(0 0 20.26px rgba(255, 218, 0, 0.43));
        }
    }
`,V1=()=>z(H1,{children:[z("div",{className:"info welcome",children:[z("div",{className:"text",children:[A("div",{className:"title",children:"SEJA BEM VINDO!"}),A("p",{children:"Seja bem vindo ao nosso sistema para criação de itens! Aqui, você está prestes a embarcar em uma jornada de criatividade e habilidade."})]}),A("img",{src:Z.engrenagemFull,alt:""})]}),z("div",{className:"info shop",children:[z("div",{className:"text",children:[A("div",{className:"title",children:"LOJA"}),A("p",{children:"Para aumentar o limite em seu armazem, ou aquantidade máxima permitida para craftar itensao mesmo tempo acesse nossa loja!"})]}),A("button",{children:"ACESSAR SITE"}),A("img",{src:Z.shop,alt:""})]})]}),W1=()=>{const{visible:e}=U0(),[t,n]=S.useState("");return Td("notify",r=>{if(r.type=="success")return ie.success(r.text,{theme:"dark",position:ie.POSITION.BOTTOM_CENTER});if(r.type=="error")return ie.error(r.text,{theme:"dark",position:ie.POSITION.BOTTOM_CENTER})}),S.useEffect(()=>{setTimeout(()=>{Ye("requestImages",{}).then(r=>{n(r)})},1e4)},[]),e?A(Om,{children:A(Pn.Provider,{value:{url:t,setUrl:n},children:z(Tg,{children:[A(Ua,{limit:4}),A(Og,{}),z(Sg,{children:[A(cn,{path:"/",element:A(V1,{})}),A(cn,{path:"/product",element:A(k1,{})}),A(cn,{path:"/storage",element:A(S1,{})}),A(cn,{path:"/collect",element:A(R1,{})}),A(cn,{path:"/delivery",element:A(z1,{})}),A(cn,{path:"/ranking",element:A(_1,{})})]})]})})}):null},Q1=Lm`
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        user-select: none;
    }

    html {
        font-size: 62.5%;
    }

    body {
        width: 100vw;
        height: 100vh;
        font-family: Poppins;

    }
    
    input[type=number]::-webkit-inner-spin-button { 
        -webkit-appearance: none;
        
    }

    input[type=number] { 
        -moz-appearance: textfield;
        appearance: textfield;
    }

    img {
        -webkit-user-drag: none;
        -khtml-user-drag: none;
        -moz-user-drag: none;
        -o-user-drag: none;
        user-drag: none;
    }
    
    @media (max-width: 3840px) {
        html {
        font-size: 139% !important;
        }
    }

    @media (max-height: 1440px) and (max-width: 2560px) {
        html {
        font-size: 85% !important;
        }
    }

    @media (max-width: 2560px) and (max-height: 1080px) {
        html {
        font-size: 69% !important;
        }
    }

    @media (max-width: 1920px) {
        html {
        font-size: 62.5% !important;
        }
    }

    @media (max-width: 1600px) {
        html {
        font-size: 54% !important;
        }
    }

    @media (max-width: 1440px) {
        html {
        font-size: 55% !important;
        }
    }

    @media (max-width: 1366px) {
        html {
        font-size: 49% !important;
        }
    }

    @media (max-width: 1280px) {
        html {
        font-size: 45.7% !important;
        }
    }

    @media (max-width: 800px) {
        html {
        font-size: 29% !important;
        }
    }


    ::-webkit-scrollbar {
        width: 0.5vh; /* width of the entire scrollbar */
    }

    ::-webkit-scrollbar-track {
        background: rgba(255, 255, 255, 0.10);
    }

    ::-webkit-scrollbar-thumb {
        background-color: #FFDA00; /* color of the scroll thumb */
    }
`;_l.createRoot(document.getElementById("root")).render(z(b0,{children:[A(Q1,{}),A(W1,{})]}));
