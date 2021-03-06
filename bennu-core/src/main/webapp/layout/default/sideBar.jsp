<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>

<bean:define id="context" type="pt.ist.bennu.core.presentationTier.Context" name="_CONTEXT_"/>
<bean:define id="menuElements" name="context" property="menuElements"/>

<div id="navlist">
<ul>
	<logic:empty name="menuElements">
		<li><!-- NO_CHECKSUM --><a href="home.do?method=firstPage"><bean:message bundle="MYORG_RESOURCES" key="label.application.home"/></a></li>
	</logic:empty>
	<logic:notEmpty name="menuElements">
		<logic:iterate id="node" name="menuElements" indexId="nindex" type="pt.ist.bennu.core.domain.contents.Node">
			<% if (node.isAccessible()) { %>
				<li>
					<% String url = node.getUrl(); %>
					<div>
						<% if (context.contains(node)) { %>
							<% if (url.indexOf(':') > 0) { %>
								<%= pt.ist.fenixWebFramework.servlets.filters.contentRewrite.RequestRewriter.HAS_CONTEXT_PREFIX %><% if(node.hasFunctionality()) { %><!-- NO_CHECKSUM --><% } %><html:link href="<%= url %>" styleClass="navlistselected">
									<bean:write name="node" property="link"/>
								</html:link>
							<% } else { %>
								<%= pt.ist.fenixWebFramework.servlets.filters.contentRewrite.RequestRewriter.HAS_CONTEXT_PREFIX %><% if(node.hasFunctionality()) { %><!-- NO_CHECKSUM --><% } %><html:link page="<%= url %>" styleClass="navlistselected">
									<bean:write name="node" property="link"/>
								</html:link>
							<% } %>
						<% } else { %>
							<% if (url.indexOf(':') > 0) { %>
								<%= pt.ist.fenixWebFramework.servlets.filters.contentRewrite.RequestRewriter.HAS_CONTEXT_PREFIX %><% if(node.hasFunctionality()) { %><!-- NO_CHECKSUM --><% } %><html:link href="<%= url %>">
									<bean:write name="node" property="link"/>
								</html:link>
							<% } else { %>
								<%= pt.ist.fenixWebFramework.servlets.filters.contentRewrite.RequestRewriter.HAS_CONTEXT_PREFIX %><% if(node.hasFunctionality()) { %><!-- NO_CHECKSUM --><% } %><html:link page="<%= url %>">
									<bean:write name="node" property="link"/>
								</html:link>
							<% } %>
						<% } %>
					</div>
				</li>
				<logic:notEmpty name="node" property="children">
					<% if (context.contains(node)) { %>
						<logic:iterate id="childNode" name="node" property="orderedChildren" type="pt.ist.bennu.core.domain.contents.Node">
							<% if (childNode.isAccessible()) { %>
								<% String childUrl = childNode.getUrl(); %>
								<li class="navsublist">
									<% if (context.contains(childNode)) { %>
										<%= pt.ist.fenixWebFramework.servlets.filters.contentRewrite.RequestRewriter.HAS_CONTEXT_PREFIX %><% if(childNode.hasFunctionality()) { %><!-- NO_CHECKSUM --><% } %><html:link page="<%= childUrl %>" styleClass="navlistselected">
											<bean:write name="childNode" property="link"/>
										</html:link>
									<% } else { %>
										<%= pt.ist.fenixWebFramework.servlets.filters.contentRewrite.RequestRewriter.HAS_CONTEXT_PREFIX %><% if(childNode.hasFunctionality()) { %><!-- NO_CHECKSUM --><% } %><html:link page="<%= childUrl %>">
											<bean:write name="childNode" property="link"/>
										</html:link>
									<% } %>
								</li>
							<% } %>
						</logic:iterate>
					<% } %>
				</logic:notEmpty>
			<% } %>
		</logic:iterate>
	</logic:notEmpty>
</ul>
</div>
