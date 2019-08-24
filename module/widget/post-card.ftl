<#macro post_card post>
<div class="im-post-list animated slideInUp">
    <a href="#" name="${post.createTime?string("yyyy-MM-dd hh:mm:ss")}" id="${post.createTime?string("yyyy-MM-dd hh:mm:ss")}"></a>
    <a href="/archives/${post.url}">
        <div class="im-weight-block-2 im-shadow ">
            <div class="im-card-2-img">
                 <#if post.thumbnail??>
                     <div style="background-image: url(${post.thumbnail})"></div>
                 <#else >
                     <div style="background-image: url(${settings.cover})"></div>
                 </#if>
            </div>
            <div class="im-card-2-post">
                <div class="im-card-2-post-title weight-title animated slideInUp" >
                    ${post.title}
                </div>
                <div class="im-card-2-post-content gray">
                    ${post.summary!}
                </div>
                <div class="im-card-2-post-footer gray">
                    <div class="im-card-2-post-footer-author">
                        ${user.nickname!}
                    </div>
                    <div class="im-card-2-post-footer-extra weight-extra-font-size">
                        <span class="messages">${post.createTime?string["EEE MMM d"]}</span>
                    </div>
                </div>
            </div>
        </div>
    </a>
</div>
</#macro>
