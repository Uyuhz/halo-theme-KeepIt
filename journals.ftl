<#include "layouts/_default/baseof.ftl">
<@baseof title="心情 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/journals">
    <div class="post-warp archive">
        <h2 class="post-title" style="text-align:right;padding-bottom:2em">-&nbsp;心情&nbsp;-</h2>
        <#list journals.content as journal>
            <article class="archive-item">
                <a href="#" class="archive-item-link">${journal.content!}</a>
                <span class="archive-item-date">
                    ${journal.createTime?string('yyyy年MM月dd日')}
                </span>
            </article>
        </#list>
        <#if journals.totalPages gt 1>
            <ul class="pagination">
                <#if journals.hasPrevious()>
                    <#if journals.number == 1>
                        <li class="page-item">
						<span class="page-link">
							<a href="${context!}/journals">首页</a>
						</span>
                    <#else>
                        <li class="page-item">
						<span class="page-link">
							<a href="${context!}/journals/page/${journals.number}">上一页</a>
						</span>
                        </li>
                    </#if>
                </#if>
                <li class="page-item">
                    <span class="page-link">
                        ${journals.number+1}
                    </span>
                </li>
                <#if journals.hasNext()>
                    <li class="page-item">
                    <span class="page-link">
                        <a href="${context!}/journals/page/${journals.number+2}/">下一页</a>
                    </span>
                    </li>
                </#if>
            </ul>
        </#if>
    </div>
</@baseof>