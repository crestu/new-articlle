
## Table of Contents

- [Description](#description)
- [Validation](#validation)
- [Category Descriptions](#category-descriptions)
- [Category Description Rake Task](#category-description-rake-task)
- [CRUD Actions](#crud-actions)
- [Category Count](#category-count)
- [Style](#style)

## Description

This Rails application allows users to manage articles and categories. It includes features such as validation for article-category associations, optional category descriptions, CRUD actions for categories, and styling for a user-friendly interface.

## Validation

Ensure that articles must belong to a category. Validation is in place to associate each article with a category during article creation and editing.

## Category Descriptions

Categories can have optional descriptions. A description column has been added to the category model. These descriptions can provide additional context or information about the category's content and are displayed in italicized format on the category index page.

## Category Description Rake Task

A Rake task has been added to backfill existing categories with descriptions. This task ensures that all categories have descriptions, providing a consistent experience for users.

To run the Rake task, use the following command:

```bash
rake backfill:categories
```

## CRUD Actions

### Create (C)

Signed-in users can create a category. The view and form are included as partials for a seamless user experience.

### Read (R)

Users can view a category by navigating to `localhost:3000/categories/:id`. A dedicated view is available for easy category exploration.

### Update (U)

Signed-in users can edit a category. An edit button is provided on the category's show view for quick access to the editing functionality.

### Delete (D)

Signed-in users can delete a category. A delete button is included on the category's show view for straightforward category removal.

## Category Count

The number of articles within each category is displayed next to the category name on the category index page. This provides a quick overview of each category's content.

## Style

The blog app is styled to be user-friendly and aesthetically pleasing. Separate style files are used for each view to maintain clarity and organization.

