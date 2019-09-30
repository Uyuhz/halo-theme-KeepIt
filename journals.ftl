<#include "layouts/_default/baseof.ftl">
<script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
<script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/gh/halo-dev/halo-comment@latest/dist/halo-comment.min.js'}"></script>
<@baseof title="心情 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/journals">
    <div class="post-warp archive">
        <h2 class="post-title" style="text-align:right;padding-bottom:2em">-&nbsp;心情&nbsp;-</h2>
        <#list journals.content as journal>
            <div class="journal-item">
                <div class="journal-item-wrapper">
                    <div class="journal-item-avatar">
                        <img src="${user.avatar!}">
                    </div>
                    <div class="journal-item-content-wrapper">
                        <div>${journal.content!}</div>
                        <div class="journal-item-date">${journal.createTime?string('yyyy年MM月dd日 HH:mm:ss')}</div>
                        <div class="journal-comment-btn" data-id="${journal.id}">
                            <img src="data:image/png;base64,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"/>
                            <span>评论</span>
                        </div>
                    </div>
                </div>
                <div id="journal-comment-${journal.id}" class="journal-comment">
                    <halo-comment id="${journal.id}" type="journal"/>
                </div>
            </div>

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