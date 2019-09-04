<#include "default.ftl">
<@default title="${post.postTitle!} | ${options.blog_title!}" keyword="${options.seo_keywords!}" desc="${options.seo_desc!}" canonical="${options.blog_url}/p/${post.postUrl!}" body_class="page-template">
    <#include "partials/menu.ftl">


<#-- The main content area -->
    <main id="site-main" class="site-main outer">
        <div class="inner">

            <article class="post-full post page no-image">

                <header class="post-full-header">
                    <h1 class="post-full-title">${post.postTitle}</h1>
                </header>

                <section class="post-full-content">
                    <div class="post-content">
                        ${post.postContent}
                    </div>
                </section>

                <section class="post-full-comments">
                    <#-- If you want to embed comments, this is a good place to do it! -->
                    <#include "module/comment.ftl">
                </section>

            </article>

        </div>
    </main>
</@default>
<@scripts>
    <script>
        $(function () {
            var $postContent = $(".post-full-content");
            $postContent.fitVids();
        });
    </script>
</@scripts>
