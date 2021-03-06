<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Tenants </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Tenants ">
    <meta name="generator" content="docfx 2.39.2.0">
    
    <link rel="shortcut icon" href="../../favicon.ico">
    <link rel="stylesheet" href="../../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../../styles/docfx.css">
    <link rel="stylesheet" href="../../styles/main.css">
    <meta property="docfx:navrel" content="../../toc.html">
    <meta property="docfx:tocrel" content="../toc.html">
    
    <meta property="docfx:rel" content="../../">
    
  </head>
  <body data-spy="scroll" data-target="#affix" data-offset="120">
    <div id="wrapper">
      <header>
        
        <nav id="autocollapse" class="navbar navbar-inverse ng-scope" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="../../index.html" width="46">
                <img id="logo" src="../../Documentation/images/atlas_icon.png" height="46" width="46" alt="OSIsoft Cloud Serices"> 
              </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
              <form class="navbar-form navbar-right" role="search" id="search">
                <div class="form-group">
                  <input type="text" class="form-control" id="search-query" placeholder="Search" autocomplete="off">
                </div>
              </form>
            </div>
          </div>
        </nav>
        
        <div class="subnav navbar navbar-default">
          <div class="container hide-when-search" id="breadcrumb">
            <ul class="breadcrumb">
              <li></li>
            </ul>
          </div>
        </div>
      </header>
      <div class="container body-content">
        
        <div id="search-results">
          <div class="search-list"></div>
          <div class="sr-items">
            <p><i class="glyphicon glyphicon-refresh index-loading"></i></p>
          </div>
          <ul id="pagination"></ul>
        </div>
      </div>
      <div role="main" class="container body-content hide-when-search">
        
        <div class="sidenav hide-when-search">
          <a class="btn toc-toggle collapse" data-toggle="collapse" href="#sidetoggle" aria-expanded="false" aria-controls="sidetoggle">Show / Hide Table of Contents</a>
          <div class="sidetoggle collapse" id="sidetoggle">
            <div id="sidetoc"></div>
          </div>
        </div>
        <div class="article row grid-right">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="AccountTenant">
<h1 id="tenants" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="5" sourceendlinenumber="5">Tenants</h1>

<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="7" sourceendlinenumber="7">APIs to manage an OCS Customer Tenant Account.</p>
<h2 id="properties" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="9" sourceendlinenumber="9">Properties</h2>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="11" sourceendlinenumber="11">For HTTP requests and responses, the Tenant object has the following properties and JSON-serialized body: </p>
<table sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="13" sourceendlinenumber="21">
<thead>
<tr>
<th>Property</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>Id</td>
<td>string</td>
<td>GUID for this Tenant. Generated by the server upon Creation. Same as AAD Id.</td>
</tr>
<tr>
<td>CompanyName</td>
<td>string</td>
<td>Company Name of this Tenant.</td>
</tr>
<tr>
<td>State</td>
<td>TenantProvisioningState</td>
<td>Current Tenant Provisioning State for this Tenant.</td>
</tr>
<tr>
<td>Created</td>
<td>DateTime</td>
<td>Date and time this Tenant was added to OCS.</td>
</tr>
<tr>
<td>LastUpdated</td>
<td>DateTime</td>
<td>Date this Tenant was last updated.</td>
</tr>
<tr>
<td>Alias</td>
<td>string</td>
<td>Specifies a unique alias for this Tenant</td>
</tr>
<tr>
<td>Features</td>
<td>[FeatureState]</td>
<td>List of Feature States for this Tenant. Returned during get calls.</td>
</tr>
</tbody>
</table>
<pre sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="24" sourceendlinenumber="34"><code class="lang-json">{
    &quot;Id&quot;: &quot;id&quot;,
    &quot;CompanyName&quot;: &quot;companyname&quot;,
    &quot;State&quot;: 0,
    &quot;Created&quot;: &quot;0001-01-01T00:00:00&quot;,
    &quot;LastUpdated&quot;: &quot;0001-01-01T00:00:00&quot;,
    &quot;Alias&quot;: &quot;alias&quot;,
    &quot;Features&quot;: []
}
</code></pre><hr>
<h2 id="get-tenant" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="37" sourceendlinenumber="37"><code>Get Tenant</code></h2>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="39" sourceendlinenumber="39">Retrieves a specific <code>Tenant</code> by ID.</p>
<h3 id="http" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="41" sourceendlinenumber="41">Http</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="43" sourceendlinenumber="43"><code>GET api/v1-preview/Tenants/{tenantId}</code></p>
<h3 id="parameters" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="46" sourceendlinenumber="46">Parameters</h3>
<pre sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="48" sourceendlinenumber="52"><code class="lang-csharp">[Required]
[FromRoute]
string tenantId
</code></pre><p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="54" sourceendlinenumber="54">The identifier of the <code>Tenant</code> to retrieve.</p>
<h3 id="security" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="57" sourceendlinenumber="57">Security</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="59" sourceendlinenumber="59">Authorized for Account Members of the specified <code>Tenant</code>.</p>
<h3 id="returns" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="61" sourceendlinenumber="61">Returns</h3>
<table sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="63" sourceendlinenumber="67">
<thead>
<tr>
<th>Status Code</th>
<th>Return Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>200</td>
<td>Tenant</td>
<td>Returns the <code>Tenant</code> with the specified tenant ID.</td>
</tr>
<tr>
<td>400</td>
<td>Nothing is returned</td>
<td>Could not retrieve the specified <code>Tenant</code> due to missing or invalid input.</td>
</tr>
<tr>
<td>403</td>
<td>Nothing is returned</td>
<td>Unauthorized to retrieve this <code>Tenant</code>.</td>
</tr>
</tbody>
</table>
<hr>
<h2 id="tenant-exists" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="72" sourceendlinenumber="72"><code>Tenant Exists</code></h2>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="74" sourceendlinenumber="74">Checks if a <code>Tenant</code> with a specific ID exists.</p>
<h3 id="http-1" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="76" sourceendlinenumber="76">Http</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="78" sourceendlinenumber="78"><code>HEAD api/v1-preview/Tenants/{tenantId}</code></p>
<h3 id="parameters-1" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="81" sourceendlinenumber="81">Parameters</h3>
<pre sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="83" sourceendlinenumber="87"><code class="lang-csharp">[Required]
[FromRoute]
string tenantId
</code></pre><p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="89" sourceendlinenumber="89">The identifier of the <code>Tenant</code> for this request.</p>
<h3 id="security-1" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="92" sourceendlinenumber="92">Security</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="94" sourceendlinenumber="94">Authorized for Account Members of the specified <code>Tenant</code>.</p>
<h3 id="returns-1" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="96" sourceendlinenumber="96">Returns</h3>
<table sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="98" sourceendlinenumber="102">
<thead>
<tr>
<th>Status Code</th>
<th>Return Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>204</td>
<td>Nothing is returned</td>
<td>A <code>Tenant</code> with the specified ID exists.</td>
</tr>
<tr>
<td>400</td>
<td>Nothing is returned</td>
<td>Could not check if the specified <code>Tenant</code> exists due to missing or invalid input.</td>
</tr>
<tr>
<td>404</td>
<td>Nothing is returned</td>
<td>A <code>Tenant</code> with the specified ID was not found.</td>
</tr>
</tbody>
</table>
<hr>
<h2 id="update-tenant" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="107" sourceendlinenumber="107"><code>Update Tenant</code></h2>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="109" sourceendlinenumber="109">Updates a specified <code>Tenant</code> object.</p>
<h3 id="http-2" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="111" sourceendlinenumber="111">Http</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="113" sourceendlinenumber="113"><code>PUT api/v1-preview/Tenants/{tenantId}</code></p>
<h3 id="parameters-2" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="116" sourceendlinenumber="116">Parameters</h3>
<pre sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="118" sourceendlinenumber="122"><code class="lang-csharp">[Required]
[FromRoute]
string tenantId
</code></pre><p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="124" sourceendlinenumber="124">The identifier of the <code>Tenant</code> to update.</p>
<pre sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="125" sourceendlinenumber="129"><code class="lang-csharp">[Required]
[FromBody]
Tenant tenant
</code></pre><p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="131" sourceendlinenumber="131">The updated details of the <code>Tenant</code>.</p>
<h3 id="security-2" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="134" sourceendlinenumber="134">Security</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="136" sourceendlinenumber="136">Authorized for Account Administrators of the specified <code>Tenant</code>.</p>
<h3 id="returns-2" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="138" sourceendlinenumber="138">Returns</h3>
<table sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="140" sourceendlinenumber="144">
<thead>
<tr>
<th>Status Code</th>
<th>Return Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>200</td>
<td>Tenant</td>
<td>Returns the updated <code>Tenant</code>.</td>
</tr>
<tr>
<td>400</td>
<td>Nothing is returned</td>
<td>Could not update the <code>Tenant</code> due to missing or invalid input.</td>
</tr>
<tr>
<td>403</td>
<td>Nothing is returned</td>
<td>Unauthorized to update the specified <code>Tenant</code>.</td>
</tr>
</tbody>
</table>
<hr>
<h2 id="get-tenant-icon" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="149" sourceendlinenumber="149"><code>Get Tenant Icon</code></h2>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="151" sourceendlinenumber="151">Returns an icon specified by its <code>Tenant</code> ID.</p>
<h3 id="http-3" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="153" sourceendlinenumber="153">Http</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="155" sourceendlinenumber="155"><code>GET api/v1-preview/Tenants/{tenantId}/Icon</code></p>
<h3 id="parameters-3" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="158" sourceendlinenumber="158">Parameters</h3>
<pre sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="160" sourceendlinenumber="164"><code class="lang-csharp">[Required]
[FromRoute]
string tenantId
</code></pre><p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="166" sourceendlinenumber="166">The identifier of the <code>Tenant</code> for this request.</p>
<h3 id="security-3" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="169" sourceendlinenumber="169">Security</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="171" sourceendlinenumber="171">Authorized for Account Members of the specified <code>Tenant</code>.</p>
<h3 id="returns-3" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="173" sourceendlinenumber="173">Returns</h3>
<table sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="175" sourceendlinenumber="179">
<thead>
<tr>
<th>Status Code</th>
<th>Return Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>200</td>
<td>string</td>
<td>Returns the Base64 encoded PNG icon string of the specified <code>Tenant</code>.</td>
</tr>
<tr>
<td>400</td>
<td>Nothing is returned</td>
<td>Could not retrieve the <code>Tenant</code> icon due to missing or invalid input.</td>
</tr>
<tr>
<td>403</td>
<td>Nothing is returned</td>
<td>Unauthorized to retrieve the specified <code>Tenant</code> icon.</td>
</tr>
</tbody>
</table>
<hr>
<h2 id="create-or-update-tenant-icon" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="184" sourceendlinenumber="184"><code>Create or Update Tenant Icon</code></h2>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="186" sourceendlinenumber="186">Creates or updates the icon for a <code>Tenant</code>. Note that the icon size must be less than MaxIconSizeInBytes.</p>
<h3 id="http-4" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="188" sourceendlinenumber="188">Http</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="190" sourceendlinenumber="190"><code>PUT api/v1-preview/Tenants/{tenantId}/Icon</code></p>
<h3 id="parameters-4" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="193" sourceendlinenumber="193">Parameters</h3>
<pre sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="195" sourceendlinenumber="199"><code class="lang-csharp">[Required]
[FromRoute]
string tenantId
</code></pre><p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="201" sourceendlinenumber="201">The <code>Tenant</code> identifier for this request.</p>
<pre sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="202" sourceendlinenumber="206"><code class="lang-csharp">[Required]
[FromBody]
string icon
</code></pre><p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="208" sourceendlinenumber="208">The Base64 encoded PNG icon for the <code>Tenant</code>.</p>
<h3 id="security-4" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="211" sourceendlinenumber="211">Security</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="213" sourceendlinenumber="213">Authorized for Account Administrators of the specified <code>Tenant</code>.</p>
<h3 id="returns-4" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="215" sourceendlinenumber="215">Returns</h3>
<table sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="217" sourceendlinenumber="221">
<thead>
<tr>
<th>Status Code</th>
<th>Return Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>200</td>
<td>string</td>
<td>Returns the new/updated Base64 encoded PNG icon string specified in the request.</td>
</tr>
<tr>
<td>400</td>
<td>Nothing is returned</td>
<td>Could not create/update the <code>Tenant</code> icon due to missing or invalid input.</td>
</tr>
<tr>
<td>403</td>
<td>Nothing is returned</td>
<td>Unauthorized to create/update the specified <code>Tenant</code> icon.</td>
</tr>
</tbody>
</table>
<hr>
<h2 id="delete-tenant-icon" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="226" sourceendlinenumber="226"><code>Delete Tenant Icon</code></h2>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="228" sourceendlinenumber="228">Deletes the icon for a <code>Tenant</code>.</p>
<h3 id="http-5" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="230" sourceendlinenumber="230">Http</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="232" sourceendlinenumber="232"><code>DELETE api/v1-preview/Tenants/{tenantId}/Icon</code></p>
<h3 id="parameters-5" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="235" sourceendlinenumber="235">Parameters</h3>
<pre sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="237" sourceendlinenumber="241"><code class="lang-csharp">[Required]
[FromRoute]
string tenantId
</code></pre><p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="243" sourceendlinenumber="243">The <code>Tenant</code> identifier for this request</p>
<h3 id="security-5" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="246" sourceendlinenumber="246">Security</h3>
<p sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="248" sourceendlinenumber="248">Authorized for Account Administrators of the specified <code>Tenant</code>.</p>
<h3 id="returns-5" sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="250" sourceendlinenumber="250">Returns</h3>
<table sourcefile="Documentation/Management/Account_Tenant.md" sourcestartlinenumber="252" sourceendlinenumber="256">
<thead>
<tr>
<th>Status Code</th>
<th>Return Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>204</td>
<td>string</td>
<td>The <code>Tenant</code> icon was deleted.</td>
</tr>
<tr>
<td>400</td>
<td>Nothing is returned</td>
<td>Could not delete the <code>Tenant</code> icon due to missing or invalid input.</td>
</tr>
<tr>
<td>403</td>
<td>Nothing is returned</td>
<td>Unauthorized to delete the specified <code>Tenant</code> icon.</td>
</tr>
</tbody>
</table>
<hr>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/osisoft/OCS-Docs/blob/master/Documentation/Management/Account_Tenant.md/#L1" class="contribution-link">Improve this Doc</a>
                  </li>
                </ul>
              </div>
              <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix" id="affix">
              <!-- <p><a class="back-to-top" href="#top">Back to top</a><p> -->
              </nav>
            </div>
          </div>
        </div>
      </div>
      
      <footer>
        <div class="grad-bottom"></div>
        <div class="footer">
            <span id='copyright-text'>© 2019 - OSIsoft, LLC.<span>
        </span></span></div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../styles/main.js"></script>
  </body>
</html>
