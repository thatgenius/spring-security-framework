<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<security:authorize access="hasRole('ROLE_ADMIN')">
    Only admin can see it<br>
</security:authorize>

<security:authorize access="hasRole('ROLE_USER')">
    Only regular signed in user can see it<br>
</security:authorize>

Everyone can see it: ${firstVal}