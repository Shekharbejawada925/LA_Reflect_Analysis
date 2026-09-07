R version 4.6.1 (2026-06-24) -- "Happy Hop"
Copyright (C) 2026 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin23

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/LA_Reflect_Analysis/.RData]

> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union
> library(ggplot2)
> install.packages("shiny")
also installing the dependencies ‘Rcpp’, ‘commonmark’, ‘httpuv’, ‘later’, ‘promises’, ‘sourcetools’, ‘xtable’

Warning: unable to access index for repository https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6:
  cannot open URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/PACKAGES'
Packages which are only available in source form, and may need compilation of
  C/C++/Fortran: ‘Rcpp’ ‘commonmark’ ‘httpuv’ ‘later’ ‘sourcetools’

Do you want to attempt to install these from sources? (Yes/no/cancel) install.packages("learnr")
Error in askYesNo("Do you want to attempt to install these from sources?") : 
  Unrecognized response “install.packages("learnr")”

> ############################################################
> # LEARNING ANALYTICS ANALYSIS
> # Social Robotics - English Reading Activity
> #
> # Author: Bejawada Shekhar
> # Student ID: 26M1032
> #
> # Research Questions:
> # RQ1. Which story sections and language versions receive
> #      the greatest visual attention?
> #
> # RQ2. Where do learners visually concentrate their attention
> #      on the same learning screen?
> #
> # RQ3. How does visual gaze behaviour vary across learners?
> ############################################################
> 
> 
> ############################################################
> # 1. LOAD PACKAGES
> ############################################################
> 
> library(dplyr)
> library(ggplot2)
> library(jsonlite)
> library(readxl)
> 
> 
> ############################################################
> # 2. SET PROJECT DIRECTORY
> ############################################################
> 
> # Check current working directory
> getwd()
[1] "/Users/shekhargoud/LA_Reflect_Analysis"
> 
> # If necessary, set it manually:
> # setwd("/Users/shekhargoud/Desktop/LA_Reflect_Analysis")
> 
> 
> ############################################################
> # 3. LOAD INTERACTION DATA
> ############################################################
> 
> # Choose the Excel interaction file
> interaction_file <- file.choose()
> 
> robotcomprehension <- read_excel(interaction_file)
Error: Can't establish that the input is either xls or xlsx.

> ############################################################
> # LEARNING ANALYTICS ANALYSIS
> # Social Robotics - English Reading Activity
> #
> # Author: Bejawada Shekhar
> # Student ID: 26M1032
> #
> # Research Questions:
> # RQ1. Which story sections and language versions receive
> #      the greatest visual attention?
> #
> # RQ2. Where do learners visually concentrate their attention
> #      on the same learning screen?
> #
> # RQ3. How does visual gaze behaviour vary across learners?
> ############################################################
> 
> 
> ############################################################
> # 1. LOAD PACKAGES
> ############################################################
> 
> library(dplyr)
> library(ggplot2)
> library(jsonlite)
> library(readxl)
> 
> 
> ############################################################
> # 2. SET PROJECT DIRECTORY
> ############################################################
> 
> # Check current working directory
> getwd()
[1] "/Users/shekhargoud/LA_Reflect_Analysis"
> 
> # If necessary, set it manually:
> # setwd("/Users/shekhargoud/Desktop/LA_Reflect_Analysis")
> 
> 
> ############################################################
> # 3. LOAD INTERACTION DATA
> ############################################################
> 
> # Choose the Excel interaction file
> interaction_file <- file.choose()
Error in file.choose() : file choice cancelled

> ############################################################
> # LEARNING ANALYTICS ANALYSIS
> # Social Robotics - English Reading Activity
> #
> # Author: Bejawada Shekhar
> # Student ID: 26M1032
> #
> # Research Questions:
> # RQ1. Which story sections and language versions receive
> #      the greatest visual attention?
> #
> # RQ2. Where do learners visually concentrate their attention
> #      on the same learning screen?
> #
> # RQ3. How does visual gaze behaviour vary across learners?
> ############################################################
> 
> 
> ############################################################
> # 1. LOAD PACKAGES
> ############################################################
> 
> library(dplyr)
> library(ggplot2)
> library(jsonlite)
> library(readxl)
> 
> 
> ############################################################
> # 2. SET PROJECT DIRECTORY
> ############################################################
> 
> # Check current working directory
> getwd()
[1] "/Users/shekhargoud/LA_Reflect_Analysis"
> 
> # If necessary, set it manually:
> # setwd("/Users/shekhargoud/Desktop/LA_Reflect_Analysis")
> 
> 
> ############################################################
> # 3. LOAD INTERACTION DATA
> ############################################################
> 
> # Choose the Excel interaction file
> interaction_file <- file.choose()
> 
> robotcomprehension <- read_excel(interaction_file)
>                                                                                               
> # Check data
> dim(robotcomprehension)
[1] 507  14
> names(robotcomprehension)
 [1] "activity"    "actid"       "task"        "taskid"      "taskType"    "element"    
 [7] "elementId"   "elementType" "duration"    "verb"        "user"        "courseId"   
[13] "timeStamp"   "attempted"  
> head(robotcomprehension)
# A tibble: 6 × 14
  activity actid task  taskid taskType element elementId elementType duration verb  user  courseId
  <chr>    <chr> <chr> <chr>  <chr>    <chr>   <chr>     <chr>          <dbl> <chr> <chr>    <dbl>
1 Social … 68e4… A Ro… 6912a… learning NA      NA        NA                NA open  6914…       27
2 Social … 68e4… A Ro… 6912a… learning 1🟦 [In… 73c35eb1… instruction       NA Clic… 6914…       27
3 Social … 68e4… A Ro… 6912a… learning 4🟥 [At… 76946284… instruction       NA Clic… 6914…       27
4 Social … 68e4… A Ro… 6912a… learning Q2 - W… 433f980b… text              NA Clic… 6914…       27
5 Social … 68e4… A Ro… 6912a… learning 5🟨 [Re… e5c7ba5c… instruction       NA Clic… 6914…       27
6 Social … 68e4… A Ro… 6912a… learning 6🟫 [Di… b88ed23e… instruction       NA Clic… 6914…       27
# ℹ 2 more variables: timeStamp <chr>, attempted <chr>
> 
> # Basic descriptive statistics
> nrow(robotcomprehension)
[1] 507
> 
> length(unique(robotcomprehension$user))
[1] 35
> 
> table(robotcomprehension$verb)

 Answered   Clicked      open timespend 
       59       303        34       111 
> 
> table(robotcomprehension$elementType)

instruction       multi multiChioce        text 
        247          71          50         105 
> 
> 
> ############################################################
> # 4. BASIC INTERACTION DATA SUMMARY
> ############################################################
> 
> interaction_summary <- data.frame(
+     records = nrow(robotcomprehension),
+     learners = length(unique(robotcomprehension$user)),
+     activities = length(unique(robotcomprehension$activity)),
+     tasks = length(unique(robotcomprehension$task)),
+     elements = length(unique(robotcomprehension$element))
+ )
> 
> interaction_summary
  records learners activities tasks elements
1     507       35          1     1       19
> 
> 
> ############################################################
> # 5. EXTRACT GAZE DATA FROM JSON FILES
> ############################################################
> 
> # Your extracted JSON files are stored under:
> # data/extracted
> 
> json_files <- list.files(
+     "data/extracted",
+     pattern = "\\.json$",
+     recursive = TRUE,
+     full.names = TRUE
+ )
> 
> length(json_files)
[1] 0
> 
> 
> ############################################################
> # FUNCTION TO EXTRACT GAZE DATA FROM ONE JSON FILE
> ############################################################
> 
> extract_gaze_json <- function(json_file, dataset_number) {
+     
+     j <- fromJSON(
+         json_file,
+         simplifyVector = FALSE
+     )
+     
+     if (is.null(j$screens) || length(j$screens) == 0) {
+         return(NULL)
+     }
+     
+     result <- lapply(j$screens, function(screen) {
+         
+         if (
+             is.null(screen$gazeData) ||
+             length(screen$gazeData) == 0
+         ) {
+             return(NULL)
+         }
+         
+         gaze_rows <- lapply(
+             screen$gazeData,
+             function(g) {
+                 
+                 # Skip incomplete gaze records
+                 if (
+                     is.null(g$timestamp) ||
+                     is.null(g$x) ||
+                     is.null(g$y)
+                 ) {
+                     return(NULL)
+                 }
+                 
+                 data.frame(
+                     user_id = j$userId,
+                     activity_id = j$activityId,
+                     task_id = j$taskId,
+                     
+                     screen_id = screen$screenId,
+                     
+                     screen_timestamp = screen$timestamp,
+                     
+                     gaze_timestamp = g$timestamp,
+                     
+                     gaze_x = as.numeric(g$x),
+                     gaze_y = as.numeric(g$y),
+                     
+                     panelTitle = ifelse(
+                         is.null(g$panelTitle),
+                         NA,
+                         as.character(g$panelTitle)
+                     ),
+                     
+                     elementId = ifelse(
+                         is.null(g$elementId),
+                         NA,
+                         as.character(g$elementId)
+                     ),
+                     
+                     image_file = ifelse(
+                         is.null(screen$imageFile),
+                         NA,
+                         as.character(screen$imageFile)
+                     ),
+                     
+                     dataset_number = dataset_number,
+                     
+                     stringsAsFactors = FALSE
+                 )
+             }
+         )
+         
+         gaze_rows <- gaze_rows[
+             !sapply(gaze_rows, is.null)
+         ]
+         
+         if (length(gaze_rows) == 0) {
+             return(NULL)
+         }
+         
+         do.call(rbind, gaze_rows)
+     })
+     
+     result <- result[
+         !sapply(result, is.null)
+     ]
+     
+     if (length(result) == 0) {
+         return(NULL)
+     }
+     
+     do.call(rbind, result)
+ }
> 
> 
> ############################################################
> # 6. COMBINE ALL GAZE JSON FILES
> ############################################################
> 
> gaze_list <- lapply(
+     seq_along(json_files),
+     function(i) {
+         
+         cat(
+             "Processing file:",
+             i,
+             "of",
+             length(json_files),
+             "\n"
+         )
+         
+         tryCatch(
+             extract_gaze_json(
+                 json_files[i],
+                 i
+             ),
+             error = function(e) {
+                 cat(
+                     "Skipped:",
+                     json_files[i],
+                     "\n"
+                 )
+                 NULL
+             }
+         )
+     }
+ )
> 
> gaze_list <- gaze_list[
+     !sapply(gaze_list, is.null)
+ ]
> 
> gaze_labeled <- do.call(
+     rbind,
+     gaze_list
+ )
> 
> # Check final gaze data
> dim(gaze_labeled)
NULL
> 
> length(unique(gaze_labeled$user_id))
[1] 0
> 
> length(unique(gaze_labeled$screen_id))
[1] 0
> 
> head(gaze_labeled)
NULL
> 
> 
> ############################################################
> # 7. CLASSIFY CONTENT TYPE
> ############################################################
> 
> gaze_labeled$content_type <- "Other"
> 
> gaze_labeled$content_type[
+     grepl(
+         "English",
+         gaze_labeled$panelTitle,
+         ignore.case = TRUE
+     )
+ ] <- "English Story"
> 
> gaze_labeled$content_type[
+     grepl(
+         "Japanese|日本語",
+         gaze_labeled$panelTitle,
+         ignore.case = TRUE
+     )
+ ] <- "Japanese Story"
> 
> gaze_labeled$content_type[
+     grepl(
+         "Question Support",
+         gaze_labeled$panelTitle,
+         ignore.case = TRUE
+     )
+ ] <- "Question Support"
> 
> gaze_labeled$content_type[
+     grepl(
+         "Question",
+         gaze_labeled$panelTitle,
+         ignore.case = TRUE
+     )
+ ] <- "Question"
> 
> 
> ############################################################
> # 8. IDENTIFY STORY SECTIONS
> ############################################################
> 
> gaze_labeled$section <- NA_character_
> 
> gaze_labeled$section[
+     grepl(
+         "^1",
+         gaze_labeled$panelTitle
+     )
+ ] <- "Section 1"
> 
> gaze_labeled$section[
+     grepl(
+         "^2",
+         gaze_labeled$panelTitle
+     )
+ ] <- "Section 2"
> 
> gaze_labeled$section[
+     grepl(
+         "^3",
+         gaze_labeled$panelTitle
+     )
+ ] <- "Section 3"
> 
> gaze_labeled$section[
+     grepl(
+         "^4",
+         gaze_labeled$panelTitle
+     )
+ ] <- "Section 4"
> 
> gaze_labeled$section[
+     grepl(
+         "^5",
+         gaze_labeled$panelTitle
+     )
+ ] <- "Section 5"
> 
> gaze_labeled$section[
+     grepl(
+         "^6",
+         gaze_labeled$panelTitle
+     )
+ ] <- "Section 6"
> 
> gaze_labeled$section[
+     grepl(
+         "^7",
+         gaze_labeled$panelTitle
+     )
+ ] <- "Section 7"
> 
> 
> ############################################################
> # 9. CREATE CLEAN GAZE DATA
> ############################################################
> 
> gaze_clean <- gaze_labeled
> 
> gaze_clean$gaze_time <- as.POSIXct(
+     gaze_clean$gaze_timestamp,
+     format = "%Y-%m-%dT%H:%M:%OSZ",
+     tz = "UTC"
+ )
> 
> # IMPORTANT:
> # Sort within learner and screen.
> # This prevents dwell time from crossing screen boundaries.
> 
> gaze_clean <- gaze_clean %>%
+     arrange(
+         user_id,
+         screen_id,
+         gaze_time
+     )
Error in UseMethod("arrange") : 
  no applicable method for 'arrange' applied to an object of class "list"

> class(gaze_labeled)
[1] "list"
> str(gaze_labeled, max.level = 1)
List of 2
 $ content_type: chr "Other"
 $ section     : chr NA
> gaze_labeled <- do.call(
+     rbind,
+     gaze_list
+ )
> gaze_labeled <- do.call(
+     rbind,
+     gaze_list
+ )
> 
> gaze_labeled <- as.data.frame(
+     gaze_labeled,
+     stringsAsFactors = FALSE
+ )
> class(gaze_labeled)
[1] "data.frame"
> dim(gaze_labeled)
[1] 0 0
> ############################################################
> # 5. EXTRACT GAZE DATA FROM JSON FILES
> ############################################################
> 
> json_files <- list.files(
+     "data/extracted",
+     pattern = "\\.json$",
+     recursive = TRUE,
+     full.names = TRUE
+ )
> 
> length(json_files)
[1] 0
> 
> 
> ############################################################
> # FUNCTION TO EXTRACT ONE JSON FILE
> ############################################################
> 
> extract_gaze_json <- function(json_file, dataset_number) {
+     
+     j <- jsonlite::fromJSON(
+         json_file,
+         simplifyVector = FALSE
+     )
+     
+     if (
+         is.null(j$screens) ||
+         length(j$screens) == 0
+     ) {
+         return(NULL)
+     }
+     
+     all_rows <- list()
+     
+     row_number <- 1
+     
+     for (screen in j$screens) {
+         
+         if (
+             is.null(screen$gazeData) ||
+             length(screen$gazeData) == 0
+         ) {
+             next
+         }
+         
+         for (g in screen$gazeData) {
+             
+             if (
+                 is.null(g$timestamp) ||
+                 is.null(g$x) ||
+                 is.null(g$y)
+             ) {
+                 next
+             }
+             
+             all_rows[[row_number]] <- data.frame(
+                 user_id =
+                     as.character(j$userId),
+                 
+                 activity_id =
+                     as.character(j$activityId),
+                 
+                 task_id =
+                     as.character(j$taskId),
+                 
+                 screen_id =
+                     as.character(screen$screenId),
+                 
+                 screen_timestamp =
+                     as.character(screen$timestamp),
+                 
+                 gaze_timestamp =
+                     as.character(g$timestamp),
+                 
+                 gaze_x =
+                     as.numeric(g$x),
+                 
+                 gaze_y =
+                     as.numeric(g$y),
+                 
+                 panelTitle =
+                     if (
+                         is.null(g$panelTitle)
+                     ) {
+                         NA_character_
+                     } else {
+                         as.character(g$panelTitle)
+                     },
+                 
+                 elementId =
+                     if (
+                         is.null(g$elementId)
+                     ) {
+                         NA_character_
+                     } else {
+                         as.character(g$elementId)
+                     },
+                 
+                 image_file =
+                     if (
+                         is.null(screen$imageFile)
+                     ) {
+                         NA_character_
+                     } else {
+                         as.character(screen$imageFile)
+                     },
+                 
+                 dataset_number =
+                     dataset_number,
+                 
+                 stringsAsFactors = FALSE
+             )
+             
+             row_number <- row_number + 1
+         }
+     }
+     
+     if (length(all_rows) == 0) {
+         return(NULL)
+     }
+     
+     do.call(
+         rbind,
+         all_rows
+     )
+ }
> 
> 
> ############################################################
> # 6. PROCESS ALL JSON FILES
> ############################################################
> 
> gaze_list <- vector(
+     "list",
+     length(json_files)
+ )
> 
> for (i in seq_along(json_files)) {
+     
+     cat(
+         "Processing:",
+         i,
+         "of",
+         length(json_files),
+         "\n"
+     )
+     
+     gaze_list[[i]] <- tryCatch(
+         extract_gaze_json(
+             json_files[i],
+             i
+         ),
+         error = function(e) {
+             
+             cat(
+                 "Skipped file:",
+                 json_files[i],
+                 "\n"
+             )
+             
+             NULL
+         }
+     )
+ }
> 
> # Remove empty results
> 
> gaze_list <- gaze_list[
+     !sapply(
+         gaze_list,
+         is.null
+     )
+ ]
> 
> 
> ############################################################
> # COMBINE INTO ONE DATA FRAME
> ############################################################
> 
> gaze_labeled <- do.call(
+     rbind,
+     gaze_list
+ )
> 
> gaze_labeled <- as.data.frame(
+     gaze_labeled,
+     stringsAsFactors = FALSE
+ )
> 
> 
> ############################################################
> # CHECK
> ############################################################
> 
> class(gaze_labeled)
[1] "data.frame"
> 
> dim(gaze_labeled)
[1] 0 0
> 
> names(gaze_labeled)
character(0)
> 
> length(
+     unique(gaze_labeled$user_id)
+ )
[1] 0
> 
> length(
+     unique(gaze_labeled$screen_id)
+ )
[1] 0
> gaze_clean <- gaze_labeled
> 
> gaze_clean$gaze_time <- as.POSIXct(
+     gaze_clean$gaze_timestamp,
+     format = "%Y-%m-%dT%H:%M:%OSZ",
+     tz = "UTC"
+ )
> 
> gaze_clean <- gaze_clean %>%
+     arrange(
+         user_id,
+         screen_id,
+         gaze_time
+     )
Error in `arrange()`:
ℹ In argument: `..1 = user_id`.
Caused by error:
! object 'user_id' not found
Run `rlang::last_trace()` to see where the error occurred.

> gaze_clean <- gaze_labeled
> 
> gaze_clean$gaze_time <- as.POSIXct(
+     gaze_clean$gaze_timestamp,
+     format = "%Y-%m-%dT%H:%M:%OSZ",
+     tz = "UTC"
+ )
> 
> gaze_clean <- gaze_clean %>%
+     arrange(
+         user_id,
+         screen_id,
+         gaze_time
+     )
Error in `arrange()`:
ℹ In argument: `..1 = user_id`.
Caused by error:
! object 'user_id' not found
Run `rlang::last_trace()` to see where the error occurred.

> install.packages("learnr")
also installing the dependencies ‘Rcpp’, ‘litedown’, ‘later’, ‘commonmark’, ‘httpuv’, ‘sourcetools’, ‘xtable’, ‘checkmate’, ‘htmlwidgets’, ‘markdown’, ‘promises’, ‘rprojroot’, ‘shiny’
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/Rcpp_1.1.2.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/litedown_0.11.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/later_1.4.8.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/commonmark_2.0.0.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/httpuv_1.6.17.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/sourcetools_0.1.7-2.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/xtable_1.8-8.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/checkmate_2.3.4.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/htmlwidgets_1.6.4.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/markdown_2.0.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/promises_1.5.0.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/rprojroot_2.1.1.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/shiny_1.14.0.tgz'
trying URL 'https://cran.rstudio.com/bin/macosx/sonoma-arm64/contrib/4.6/learnr_0.11.6.tgz'

The downloaded binary packages are in
	/var/folders/22/qbjnndk1295g0st0_7vxwf5w0000gn/T//RtmphHD66o/downloaded_packages
> json_files <- list.files(
+     "data/extracted",
+     pattern = "\\.json$",
+     recursive = TRUE,
+     full.names = TRUE
+ )
> 
> length(json_files)
[1] 0
> # [1] 0
> list.files(
+     "/Users/shekhargoud/Desktop/LA_Reflect_Analysis",
+     pattern = "\\.json$",
+     recursive = TRUE,
+     full.names = TRUE
+ )
 [1] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb4410888a7b66fa988/dataset.json"
 [2] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb6410888a7b66fa998/dataset.json"
 [3] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb6410888a7b66fa9a0/dataset.json"
 [4] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb9410888a7b66fa9b8/dataset.json"
 [5] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebb410888a7b66fa9c0/dataset.json"
 [6] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebb410888a7b66fa9d0/dataset.json"
 [7] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebc410888a7b66fa9e0/dataset.json"
 [8] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebc410888a7b66fa9ee/dataset.json"
 [9] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebd410888a7b66faa01/dataset.json"
[10] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebe410888a7b66faa2e/dataset.json"
[11] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebe410888a7b66faa36/dataset.json"
[12] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa3e/dataset.json"
[13] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa46/dataset.json"
[14] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa4e/dataset.json"
[15] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa56/dataset.json"
[16] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa5e/dataset.json"
[17] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa66/dataset.json"
[18] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa72/dataset.json"
[19] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa7a/dataset.json"
[20] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa82/dataset.json"
[21] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa8a/dataset.json"
[22] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa96/dataset.json"
[23] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa9e/dataset.json"
[24] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec0410888a7b66faaae/dataset.json"
[25] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66faad2/dataset.json"
[26] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66faae9/dataset.json"
[27] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66fab22/dataset.json"
[28] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec3410888a7b66fab32/dataset.json"
[29] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec3410888a7b66fab3e/dataset.json"
[30] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec4410888a7b66fab58/dataset.json"
[31] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec4410888a7b66fab60/dataset.json"
[32] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec8410888a7b66fab88/dataset.json"
[33] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ed7410888a7b66faba6/dataset.json"
[34] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ee2410888a7b66fabd0/dataset.json"
[35] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_user/dataset.json"                    
[36] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/6a71afb76efc3069c5f69db0_6a8312cf509e6ab38aa5f4b9_6a71b6de6efc3069c5f69ef0/dataset.json"
> setwd("/Users/shekhargoud/Desktop/LA_Reflect_Analysis")
> getwd()
[1] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis"
> json_files <- list.files(
+     "data/extracted",
+     pattern = "\\.json$",
+     recursive = TRUE,
+     full.names = TRUE
+ )
> 
> length(json_files)
[1] 36
> list.files(
+     "/Users/shekhargoud/Desktop",
+     pattern = "\\.json$",
+     recursive = TRUE,
+     full.names = TRUE
+ )
 [1] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb4410888a7b66fa988/dataset.json"
 [2] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb6410888a7b66fa998/dataset.json"
 [3] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb6410888a7b66fa9a0/dataset.json"
 [4] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb9410888a7b66fa9b8/dataset.json"
 [5] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebb410888a7b66fa9c0/dataset.json"
 [6] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebb410888a7b66fa9d0/dataset.json"
 [7] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebc410888a7b66fa9e0/dataset.json"
 [8] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebc410888a7b66fa9ee/dataset.json"
 [9] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebd410888a7b66faa01/dataset.json"
[10] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebe410888a7b66faa2e/dataset.json"
[11] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebe410888a7b66faa36/dataset.json"
[12] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa3e/dataset.json"
[13] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa46/dataset.json"
[14] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa4e/dataset.json"
[15] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa56/dataset.json"
[16] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa5e/dataset.json"
[17] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa66/dataset.json"
[18] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa72/dataset.json"
[19] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa7a/dataset.json"
[20] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa82/dataset.json"
[21] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa8a/dataset.json"
[22] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa96/dataset.json"
[23] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa9e/dataset.json"
[24] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec0410888a7b66faaae/dataset.json"
[25] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66faad2/dataset.json"
[26] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66faae9/dataset.json"
[27] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66fab22/dataset.json"
[28] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec3410888a7b66fab32/dataset.json"
[29] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec3410888a7b66fab3e/dataset.json"
[30] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec4410888a7b66fab58/dataset.json"
[31] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec4410888a7b66fab60/dataset.json"
[32] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec8410888a7b66fab88/dataset.json"
[33] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ed7410888a7b66faba6/dataset.json"
[34] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ee2410888a7b66fabd0/dataset.json"
[35] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_user/dataset.json"                    
[36] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/6a71afb76efc3069c5f69db0_6a8312cf509e6ab38aa5f4b9_6a71b6de6efc3069c5f69ef0/dataset.json"
> list.files(
+     "/Users/shekhargoud",
+     pattern = "\\.json$",
+     recursive = TRUE,
+     full.names = TRUE
+ )
   [1] "/Users/shekhargoud/Applications/WebCatalog Apps/ACE Online.app/Contents/Frameworks/Electron Framework.framework/Libraries/vk_swiftshader_icd.json"                 
   [2] "/Users/shekhargoud/Applications/WebCatalog Apps/ACE Online.app/Contents/Frameworks/Electron Framework.framework/Versions/A/Libraries/vk_swiftshader_icd.json"      
   [3] "/Users/shekhargoud/Applications/WebCatalog Apps/ACE Online.app/Contents/Frameworks/Electron Framework.framework/Versions/Current/Libraries/vk_swiftshader_icd.json"
   [4] "/Users/shekhargoud/Applications/WebCatalog Apps/ACE Online.app/Contents/Resources/app.asar.unpacked/build/app.json"                                                
   [5] "/Users/shekhargoud/Applications/WebCatalog Apps/ACE Online.app/Contents/Resources/app.asar.unpacked/package.json"                                                  
   [6] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb4410888a7b66fa988/dataset.json"             
   [7] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb6410888a7b66fa998/dataset.json"             
   [8] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb6410888a7b66fa9a0/dataset.json"             
   [9] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb9410888a7b66fa9b8/dataset.json"             
  [10] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebb410888a7b66fa9c0/dataset.json"             
  [11] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebb410888a7b66fa9d0/dataset.json"             
  [12] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebc410888a7b66fa9e0/dataset.json"             
  [13] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebc410888a7b66fa9ee/dataset.json"             
  [14] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebd410888a7b66faa01/dataset.json"             
  [15] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebe410888a7b66faa2e/dataset.json"             
  [16] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebe410888a7b66faa36/dataset.json"             
  [17] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa3e/dataset.json"             
  [18] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa46/dataset.json"             
  [19] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa4e/dataset.json"             
  [20] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa56/dataset.json"             
  [21] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa5e/dataset.json"             
  [22] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa66/dataset.json"             
  [23] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa72/dataset.json"             
  [24] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa7a/dataset.json"             
  [25] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa82/dataset.json"             
  [26] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa8a/dataset.json"             
  [27] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa96/dataset.json"             
  [28] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa9e/dataset.json"             
  [29] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec0410888a7b66faaae/dataset.json"             
  [30] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66faad2/dataset.json"             
  [31] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66faae9/dataset.json"             
  [32] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66fab22/dataset.json"             
  [33] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec3410888a7b66fab32/dataset.json"             
  [34] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec3410888a7b66fab3e/dataset.json"             
  [35] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec4410888a7b66fab58/dataset.json"             
  [36] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec4410888a7b66fab60/dataset.json"             
  [37] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec8410888a7b66fab88/dataset.json"             
  [38] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ed7410888a7b66faba6/dataset.json"             
  [39] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ee2410888a7b66fabd0/dataset.json"             
  [40] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_user/dataset.json"                                 
  [41] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/6a71afb76efc3069c5f69db0_6a8312cf509e6ab38aa5f4b9_6a71b6de6efc3069c5f69ef0/dataset.json"             
  [42] "/Users/shekhargoud/Downloads/all/Documents/code/static/vendor/bootstrap-icons/bootstrap-icons.json"                                                                
  [43] "/Users/shekhargoud/Downloads/all/Documents/code/venv/lib/python3.13/site-packages/setuptools/config/distutils.schema.json"                                         
  [44] "/Users/shekhargoud/Downloads/all/Documents/code/venv/lib/python3.13/site-packages/setuptools/config/setuptools.schema.json"                                        
  [45] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ampproject 2/remapping/package.json"                                                
  [46] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ampproject/remapping/package.json"                                                  
  [47] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/code-frame/package.json"                                                    
  [48] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/corejs2-built-ins.json"                                    
  [49] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/corejs3-shipped-proposals.json"                            
  [50] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/native-modules.json"                                       
  [51] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/overlapping-plugins.json"                                  
  [52] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/plugin-bugfixes.json"                                      
  [53] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/plugins.json"                                              
  [54] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/package.json"                                                   
  [55] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/core/package.json"                                                          
  [56] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/generator/package.json"                                                     
  [57] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-compilation-targets/package.json"                                    
  [58] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-globals/data/browser-upper.json"                                     
  [59] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-globals/data/builtin-lower.json"                                     
  [60] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-globals/data/builtin-upper.json"                                     
  [61] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-globals/package.json"                                                
  [62] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-module-imports/package.json"                                         
  [63] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-module-transforms/package.json"                                      
  [64] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-plugin-utils/package.json"                                           
  [65] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-string-parser/package.json"                                          
  [66] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-validator-identifier/package.json"                                   
  [67] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-validator-option/package.json"                                       
  [68] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helpers/package.json"                                                       
  [69] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/parser/package.json"                                                        
  [70] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-async-generators/package.json"                                
  [71] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-bigint/package.json"                                          
  [72] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-class-properties/package.json"                                
  [73] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-class-static-block/package.json"                              
  [74] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-import-attributes/package.json"                               
  [75] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-import-meta/package.json"                                     
  [76] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-json-strings/package.json"                                    
  [77] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-jsx/package.json"                                             
  [78] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-logical-assignment-operators/package.json"                    
  [79] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-nullish-coalescing-operator/package.json"                     
  [80] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-numeric-separator/package.json"                               
  [81] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-object-rest-spread/package.json"                              
  [82] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-optional-catch-binding/package.json"                          
  [83] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-optional-chaining/package.json"                               
  [84] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-private-property-in-object/package.json"                      
  [85] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-top-level-await/package.json"                                 
  [86] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-typescript/package.json"                                      
  [87] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/template/package.json"                                                      
  [88] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/traverse/package.json"                                                      
  [89] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/types/package.json"                                                         
  [90] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/code-frame/package.json"                                                      
  [91] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/corejs2-built-ins.json"                                      
  [92] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/corejs3-shipped-proposals.json"                              
  [93] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/native-modules.json"                                         
  [94] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/overlapping-plugins.json"                                    
  [95] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/plugin-bugfixes.json"                                        
  [96] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/plugins.json"                                                
  [97] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/package.json"                                                     
  [98] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/core/node_modules/semver/package.json"                                        
  [99] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/core/package.json"                                                            
 [100] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/generator/package.json"                                                       
 [101] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-compilation-targets/node_modules/semver/package.json"                  
 [102] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-compilation-targets/package.json"                                      
 [103] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-globals/data/browser-upper.json"                                       
 [104] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-globals/data/builtin-lower.json"                                       
 [105] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-globals/data/builtin-upper.json"                                       
 [106] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-globals/package.json"                                                  
 [107] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-module-imports/package.json"                                           
 [108] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-module-transforms/package.json"                                        
 [109] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-plugin-utils/package.json"                                             
 [110] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-string-parser/package.json"                                            
 [111] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-validator-identifier/package.json"                                     
 [112] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-validator-option/package.json"                                         
 [113] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helpers/package.json"                                                         
 [114] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/parser/package.json"                                                          
 [115] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-async-generators/package.json"                                  
 [116] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-bigint/package.json"                                            
 [117] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-class-properties/package.json"                                  
 [118] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-class-static-block/package.json"                                
 [119] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-import-attributes/package.json"                                 
 [120] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-import-meta/package.json"                                       
 [121] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-json-strings/package.json"                                      
 [122] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-jsx/package.json"                                               
 [123] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-logical-assignment-operators/package.json"                      
 [124] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-nullish-coalescing-operator/package.json"                       
 [125] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-numeric-separator/package.json"                                 
 [126] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-object-rest-spread/package.json"                                
 [127] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-optional-catch-binding/package.json"                            
 [128] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-optional-chaining/package.json"                                 
 [129] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-private-property-in-object/package.json"                        
 [130] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-top-level-await/package.json"                                   
 [131] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-typescript/package.json"                                        
 [132] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/template/package.json"                                                        
 [133] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/traverse/package.json"                                                        
 [134] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/types/package.json"                                                           
 [135] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe 2/v8-coverage/dist/lib/package.json"                                           
 [136] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe 2/v8-coverage/dist/lib/tsconfig.json"                                          
 [137] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe 2/v8-coverage/package.json"                                                    
 [138] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe 2/v8-coverage/tsconfig.json"                                                   
 [139] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe/v8-coverage/dist/lib/package.json"                                             
 [140] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe/v8-coverage/dist/lib/tsconfig.json"                                            
 [141] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe/v8-coverage/package.json"                                                      
 [142] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe/v8-coverage/tsconfig.json"                                                     
 [143] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ioredis 2/commands/built/commands.json"                                             
 [144] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ioredis 2/commands/package.json"                                                    
 [145] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ioredis/commands/built/commands.json"                                               
 [146] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ioredis/commands/package.json"                                                      
 [147] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@isaacs 2/cliui/package.json"                                                        
 [148] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@isaacs/cliui/package.json"                                                          
 [149] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@istanbuljs 2/load-nyc-config/package.json"                                          
 [150] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@istanbuljs 2/schema/package.json"                                                   
 [151] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@istanbuljs/load-nyc-config/package.json"                                            
 [152] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@istanbuljs/schema/package.json"                                                     
 [153] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/console/package.json"                                                          
 [154] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/core/package.json"                                                             
 [155] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/diff-sequences/package.json"                                                   
 [156] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/environment/package.json"                                                      
 [157] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/expect-utils/package.json"                                                     
 [158] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/expect/package.json"                                                           
 [159] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/fake-timers/package.json"                                                      
 [160] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/get-type/package.json"                                                         
 [161] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/globals/package.json"                                                          
 [162] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/pattern/api-extractor.json"                                                    
 [163] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/pattern/package.json"                                                          
 [164] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/pattern/tsconfig.json"                                                         
 [165] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/reporters/package.json"                                                        
 [166] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/schemas/package.json"                                                          
 [167] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/snapshot-utils/api-extractor.json"                                             
 [168] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/snapshot-utils/package.json"                                                   
 [169] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/snapshot-utils/tsconfig.json"                                                  
 [170] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/source-map/package.json"                                                       
 [171] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/test-result/package.json"                                                      
 [172] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/test-sequencer/package.json"                                                   
 [173] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/transform/package.json"                                                        
 [174] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/types/package.json"                                                            
 [175] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell 2/gen-mapping/package.json"                                              
 [176] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell 2/resolve-uri/package.json"                                              
 [177] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell 2/sourcemap-codec/package.json"                                          
 [178] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell 2/trace-mapping/package.json"                                            
 [179] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell/gen-mapping/package.json"                                                
 [180] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell/resolve-uri/package.json"                                                
 [181] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell/sourcemap-codec/package.json"                                            
 [182] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell/trace-mapping/package.json"                                              
 [183] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@mongodb-js/saslprep/package.json"                                                   
 [184] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@msgpackr-extract/msgpackr-extract-darwin-arm64/package.json"                        
 [185] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@pkgjs 2/parseargs/package.json"                                                     
 [186] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@pkgjs/parseargs/package.json"                                                       
 [187] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@pkgr 2/core/package.json"                                                           
 [188] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@pkgr/core/package.json"                                                             
 [189] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/compiler/package.json"                                           
 [190] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/errors/package.json"                                             
 [191] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/package.json"                                                    
 [192] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/parser/package.json"                                             
 [193] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/syntax/package.json"                                             
 [194] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/system/package.json"                                             
 [195] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/type/package.json"                                               
 [196] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/value/package.json"                                              
 [197] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/compiler/package.json"                                             
 [198] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/errors/package.json"                                               
 [199] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/package.json"                                                      
 [200] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/parser/package.json"                                               
 [201] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/syntax/package.json"                                               
 [202] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/system/package.json"                                               
 [203] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/type/package.json"                                                 
 [204] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/value/package.json"                                                
 [205] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinonjs 2/commons/package.json"                                                     
 [206] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinonjs 2/fake-timers/package.json"                                                 
 [207] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinonjs/commons/package.json"                                                       
 [208] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinonjs/fake-timers/package.json"                                                   
 [209] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/babel__core/package.json"                                                     
 [210] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/babel__generator/package.json"                                                
 [211] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/babel__template/package.json"                                                 
 [212] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/babel__traverse/package.json"                                                 
 [213] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/istanbul-lib-coverage/package.json"                                           
 [214] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/istanbul-lib-report/package.json"                                             
 [215] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/istanbul-reports/package.json"                                                
 [216] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/node/package.json"                                                            
 [217] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/stack-utils/package.json"                                                     
 [218] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/webidl-conversions/package.json"                                              
 [219] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/whatwg-url/package.json"                                                      
 [220] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/yargs-parser/package.json"                                                    
 [221] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/yargs/package.json"                                                           
 [222] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ungap 2/structured-clone/cjs/package.json"                                          
 [223] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ungap 2/structured-clone/package.json"                                              
 [224] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ungap/structured-clone/cjs/package.json"                                            
 [225] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ungap/structured-clone/package.json"                                                
 [226] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@unrs/resolver-binding-darwin-arm64/package.json"                                    
 [227] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/accepts 2/package.json"                                                              
 [228] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/accepts/package.json"                                                                
 [229] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ansi-escapes/package.json"                                                           
 [230] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ansi-regex/package.json"                                                             
 [231] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ansi-styles/package.json"                                                            
 [232] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/anymatch/package.json"                                                               
 [233] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/argparse/package.json"                                                               
 [234] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-jest/package.json"                                                             
 [235] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-plugin-istanbul/package.json"                                                  
 [236] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-plugin-jest-hoist/package.json"                                                
 [237] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-preset-current-node-syntax 2/package.json"                                     
 [238] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-preset-current-node-syntax/package.json"                                       
 [239] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-preset-jest/package.json"                                                      
 [240] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/balanced-match/package.json"                                                         
 [241] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/body-parser 2/package.json"                                                          
 [242] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/body-parser/package.json"                                                            
 [243] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/brace-expansion/package.json"                                                        
 [244] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/braces/package.json"                                                                 
 [245] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/browserslist/package.json"                                                           
 [246] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bser/package.json"                                                                   
 [247] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson 2/package.json"                                                                 
 [248] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson 2/vendor/base64/package.json"                                                   
 [249] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson 2/vendor/text-encoding/package.json"                                            
 [250] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson/package.json"                                                                   
 [251] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson/vendor/base64/package.json"                                                     
 [252] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson/vendor/text-encoding/package.json"                                              
 [253] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/buffer-from/package.json"                                                            
 [254] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bullmq/package.json"                                                                 
 [255] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bytes 2/package.json"                                                                
 [256] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bytes/package.json"                                                                  
 [257] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bind-apply-helpers 2/package.json"                                              
 [258] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bind-apply-helpers 2/tsconfig.json"                                             
 [259] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bind-apply-helpers/package.json"                                                
 [260] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bind-apply-helpers/tsconfig.json"                                               
 [261] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bound 2/package.json"                                                           
 [262] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bound 2/tsconfig.json"                                                          
 [263] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bound/package.json"                                                             
 [264] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bound/tsconfig.json"                                                            
 [265] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/callsites/package.json"                                                              
 [266] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/camelcase 2/package.json"                                                            
 [267] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/camelcase/package.json"                                                              
 [268] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/caniuse-lite/package.json"                                                           
 [269] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/chalk/package.json"                                                                  
 [270] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/char-regex/package.json"                                                             
 [271] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ci-info/package.json"                                                                
 [272] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ci-info/vendors.json"                                                                
 [273] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cjs-module-lexer/package.json"                                                       
 [274] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/node_modules/ansi-regex/package.json"                                          
 [275] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/node_modules/emoji-regex/package.json"                                         
 [276] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/node_modules/string-width/package.json"                                        
 [277] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/node_modules/strip-ansi/package.json"                                          
 [278] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/node_modules/wrap-ansi/package.json"                                           
 [279] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/package.json"                                                                  
 [280] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cluster-key-slot 2/package.json"                                                     
 [281] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cluster-key-slot/package.json"                                                       
 [282] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/co/package.json"                                                                     
 [283] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/collect-v8-coverage/package.json"                                                    
 [284] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/color-convert/package.json"                                                          
 [285] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/color-name 2/package.json"                                                           
 [286] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/color-name/package.json"                                                             
 [287] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/concat-map/package.json"                                                             
 [288] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/content-disposition 2/package.json"                                                  
 [289] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/content-disposition/package.json"                                                    
 [290] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/content-type 2/package.json"                                                         
 [291] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/content-type/package.json"                                                           
 [292] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/convert-source-map/package.json"                                                     
 [293] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cookie 2/package.json"                                                               
 [294] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cookie-signature 2/package.json"                                                     
 [295] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cookie-signature/package.json"                                                       
 [296] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cookie/package.json"                                                                 
 [297] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cors 2/package.json"                                                                 
 [298] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cors/package.json"                                                                   
 [299] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cron-parser/package.json"                                                            
 [300] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cross-spawn/package.json"                                                            
 [301] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/debug/package.json"                                                                  
 [302] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/dedent/package.json"                                                                 
 [303] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/deepmerge/package.json"                                                              
 [304] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/denque 2/package.json"                                                               
 [305] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/denque/package.json"                                                                 
 [306] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/depd 2/package.json"                                                                 
 [307] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/depd/package.json"                                                                   
 [308] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/detect-libc/package.json"                                                            
 [309] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/detect-newline/package.json"                                                         
 [310] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/dunder-proto 2/package.json"                                                         
 [311] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/dunder-proto 2/tsconfig.json"                                                        
 [312] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/dunder-proto/package.json"                                                           
 [313] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/dunder-proto/tsconfig.json"                                                          
 [314] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/eastasianwidth/package.json"                                                         
 [315] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ee-first 2/package.json"                                                             
 [316] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ee-first/package.json"                                                               
 [317] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium 2/chromium-versions.json"                                       
 [318] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium 2/full-chromium-versions.json"                                  
 [319] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium 2/full-versions.json"                                           
 [320] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium 2/package.json"                                                 
 [321] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium 2/versions.json"                                                
 [322] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium/chromium-versions.json"                                         
 [323] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium/full-chromium-versions.json"                                    
 [324] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium/full-versions.json"                                             
 [325] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium/package.json"                                                   
 [326] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium/versions.json"                                                  
 [327] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/emittery/package.json"                                                               
 [328] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/emoji-regex/package.json"                                                            
 [329] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/encodeurl 2/package.json"                                                            
 [330] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/encodeurl/package.json"                                                              
 [331] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/error-ex/package.json"                                                               
 [332] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-define-property 2/package.json"                                                   
 [333] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-define-property 2/tsconfig.json"                                                  
 [334] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-define-property/package.json"                                                     
 [335] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-define-property/tsconfig.json"                                                    
 [336] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-errors 2/package.json"                                                            
 [337] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-errors 2/tsconfig.json"                                                           
 [338] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-errors/package.json"                                                              
 [339] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-errors/tsconfig.json"                                                             
 [340] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-object-atoms 2/package.json"                                                      
 [341] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-object-atoms 2/tsconfig.json"                                                     
 [342] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-object-atoms/package.json"                                                        
 [343] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-object-atoms/tsconfig.json"                                                       
 [344] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/escalade/package.json"                                                               
 [345] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/escape-html 2/package.json"                                                          
 [346] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/escape-html/package.json"                                                            
 [347] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/escape-string-regexp/package.json"                                                   
 [348] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/esprima/package.json"                                                                
 [349] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/etag 2/package.json"                                                                 
 [350] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/etag/package.json"                                                                   
 [351] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/execa 2/node_modules/signal-exit/package.json"                                       
 [352] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/execa 2/package.json"                                                                
 [353] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/execa/node_modules/signal-exit/package.json"                                         
 [354] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/execa/package.json"                                                                  
 [355] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/exit-x/package.json"                                                                 
 [356] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/expect/package.json"                                                                 
 [357] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/express 2/package.json"                                                              
 [358] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/express/package.json"                                                                
 [359] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fast-json-stable-stringify/benchmark/test.json"                                      
 [360] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fast-json-stable-stringify/package.json"                                             
 [361] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fb-watchman/package.json"                                                            
 [362] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fill-range/package.json"                                                             
 [363] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/finalhandler 2/package.json"                                                         
 [364] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/finalhandler/package.json"                                                           
 [365] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/find-up 2/package.json"                                                              
 [366] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/find-up/package.json"                                                                
 [367] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/foreground-child 2/dist/commonjs/package.json"                                       
 [368] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/foreground-child 2/dist/esm/package.json"                                            
 [369] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/foreground-child/dist/commonjs/package.json"                                         
 [370] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/foreground-child/dist/esm/package.json"                                              
 [371] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/foreground-child/package.json"                                                       
 [372] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/forwarded 2/package.json"                                                            
 [373] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/forwarded/package.json"                                                              
 [374] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fresh 2/package.json"                                                                
 [375] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fresh/package.json"                                                                  
 [376] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fs.realpath/package.json"                                                            
 [377] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fsevents/package 2.json"                                                             
 [378] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fsevents/package.json"                                                               
 [379] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/function-bind 2/package.json"                                                        
 [380] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/function-bind/package.json"                                                          
 [381] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/gensync/package.json"                                                                
 [382] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-caller-file/package.json"                                                        
 [383] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-intrinsic 2/package.json"                                                        
 [384] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-intrinsic/package.json"                                                          
 [385] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-package-type 2/package.json"                                                     
 [386] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-package-type/package.json"                                                       
 [387] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-proto 2/package.json"                                                            
 [388] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-proto 2/tsconfig.json"                                                           
 [389] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-proto/package.json"                                                              
 [390] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-proto/tsconfig.json"                                                             
 [391] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-stream/package.json"                                                             
 [392] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/glob/dist/commonjs/package.json"                                                     
 [393] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/glob/dist/esm/package.json"                                                          
 [394] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/glob/package.json"                                                                   
 [395] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/gopd 2/package.json"                                                                 
 [396] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/gopd 2/tsconfig.json"                                                                
 [397] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/gopd/package.json"                                                                   
 [398] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/gopd/tsconfig.json"                                                                  
 [399] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/graceful-fs 2/package.json"                                                          
 [400] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/graceful-fs/package.json"                                                            
 [401] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/has-flag/package.json"                                                               
 [402] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/has-symbols 2/package.json"                                                          
 [403] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/has-symbols 2/tsconfig.json"                                                         
 [404] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/has-symbols/package.json"                                                            
 [405] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/has-symbols/tsconfig.json"                                                           
 [406] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/hasown 2/package.json"                                                               
 [407] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/hasown 2/tsconfig.json"                                                              
 [408] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/hasown/package.json"                                                                 
 [409] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/hasown/tsconfig.json"                                                                
 [410] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper 2/cjs/package.json"                                                     
 [411] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper 2/package.json"                                                         
 [412] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper 2/test/package.json"                                                    
 [413] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper/cjs/package.json"                                                       
 [414] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper/package.json"                                                           
 [415] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper/test/package.json"                                                      
 [416] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors 2/node_modules/statuses/codes.json"                                      
 [417] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors 2/node_modules/statuses/package.json"                                    
 [418] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors 2/package.json"                                                          
 [419] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors/node_modules/statuses/codes.json"                                        
 [420] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors/node_modules/statuses/package.json"                                      
 [421] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors/package.json"                                                            
 [422] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/human-signals 2/package.json"                                                        
 [423] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/human-signals/package.json"                                                          
 [424] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/big5-added.json"                                       
 [425] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/cp936.json"                                            
 [426] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/cp949.json"                                            
 [427] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/cp950.json"                                            
 [428] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/eucjp.json"                                            
 [429] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/gb18030-ranges.json"                                   
 [430] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/gbk-added.json"                                        
 [431] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/shiftjis.json"                                         
 [432] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/package.json"                                                           
 [433] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/big5-added.json"                                         
 [434] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/cp936.json"                                              
 [435] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/cp949.json"                                              
 [436] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/cp950.json"                                              
 [437] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/eucjp.json"                                              
 [438] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/gb18030-ranges.json"                                     
 [439] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/gbk-added.json"                                          
 [440] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/shiftjis.json"                                           
 [441] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/package.json"                                                             
 [442] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/import-local 2/package.json"                                                         
 [443] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/import-local/package.json"                                                           
 [444] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/imurmurhash/package.json"                                                            
 [445] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/inflight/package.json"                                                               
 [446] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/inherits/package.json"                                                               
 [447] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ioredis 2/package.json"                                                              
 [448] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ioredis/package.json"                                                                
 [449] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ipaddr 2.js/package.json"                                                            
 [450] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ipaddr.js/package.json"                                                              
 [451] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-arrayish/package.json"                                                            
 [452] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-fullwidth-code-point/package.json"                                                
 [453] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-generator-fn/package.json"                                                        
 [454] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-number/package.json"                                                              
 [455] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-promise 2/package.json"                                                           
 [456] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-promise/package.json"                                                             
 [457] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-stream/package.json"                                                              
 [458] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/isexe/package.json"                                                                  
 [459] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-coverage 2/package.json"                                                
 [460] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-coverage/package.json"                                                  
 [461] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-instrument/node_modules/semver/package.json"                            
 [462] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-instrument/package.json"                                                
 [463] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-report/package.json"                                                    
 [464] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-source-maps/package.json"                                               
 [465] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-reports/package.json"                                                       
 [466] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jackspeak 2/dist/commonjs/package.json"                                              
 [467] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jackspeak 2/dist/esm/package.json"                                                   
 [468] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jackspeak/dist/commonjs/package.json"                                                
 [469] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jackspeak/dist/esm/package.json"                                                     
 [470] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jackspeak/package.json"                                                              
 [471] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest 2/package.json"                                                                 
 [472] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-changed-files/package.json"                                                     
 [473] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-circus 2/package.json"                                                          
 [474] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-circus/package.json"                                                            
 [475] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-cli/package.json"                                                               
 [476] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-config/package.json"                                                            
 [477] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-diff/package.json"                                                              
 [478] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-docblock 2/package.json"                                                        
 [479] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-docblock/package.json"                                                          
 [480] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-each/package.json"                                                              
 [481] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-environment-node/package.json"                                                  
 [482] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-haste-map 2/package.json"                                                       
 [483] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-haste-map/package.json"                                                         
 [484] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-leak-detector/package.json"                                                     
 [485] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-matcher-utils/package.json"                                                     
 [486] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-message-util/package.json"                                                      
 [487] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-mock/package.json"                                                              
 [488] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-pnp-resolver/package.json"                                                      
 [489] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-regex-util/package.json"                                                        
 [490] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-resolve 2/package.json"                                                         
 [491] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-resolve-dependencies/package.json"                                              
 [492] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-resolve/package.json"                                                           
 [493] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-runner/package.json"                                                            
 [494] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-runtime/package.json"                                                           
 [495] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-snapshot 2/node_modules/semver/package.json"                                    
 [496] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-snapshot 2/package.json"                                                        
 [497] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-snapshot/package.json"                                                          
 [498] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-util 2/node_modules/picomatch/package.json"                                     
 [499] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-util 2/package.json"                                                            
 [500] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-util/node_modules/picomatch/package.json"                                       
 [501] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-util/package.json"                                                              
 [502] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-validate 2/node_modules/camelcase/package.json"                                 
 [503] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-validate 2/package.json"                                                        
 [504] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-validate/node_modules/camelcase/package.json"                                   
 [505] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-validate/package.json"                                                          
 [506] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-watcher/package.json"                                                           
 [507] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-worker 2/node_modules/supports-color/package.json"                              
 [508] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-worker 2/package.json"                                                          
 [509] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-worker/node_modules/supports-color/package.json"                                
 [510] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-worker/package.json"                                                            
 [511] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest/package.json"                                                                   
 [512] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/js-tokens/package.json"                                                              
 [513] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/js-yaml/package.json"                                                                
 [514] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jsesc/package.json"                                                                  
 [515] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/json-parse-even-better-errors/package.json"                                          
 [516] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/json5/package.json"                                                                  
 [517] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/kareem/package.json"                                                                 
 [518] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/leven/package.json"                                                                  
 [519] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lines-and-columns/package.json"                                                      
 [520] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/locate-path 2/package.json"                                                          
 [521] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/locate-path/package.json"                                                            
 [522] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lodash 2.defaults/package.json"                                                      
 [523] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lodash 2.isarguments/package.json"                                                   
 [524] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lodash.defaults/package.json"                                                        
 [525] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lodash.isarguments/package.json"                                                     
 [526] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lru-cache/package.json"                                                              
 [527] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/luxon/package.json"                                                                  
 [528] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/luxon/src/package.json"                                                              
 [529] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/make-dir 2/node_modules/semver/package.json"                                         
 [530] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/make-dir 2/package.json"                                                             
 [531] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/make-dir/package.json"                                                               
 [532] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/makeerror/package.json"                                                              
 [533] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/math-intrinsics 2/package.json"                                                      
 [534] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/math-intrinsics 2/tsconfig.json"                                                     
 [535] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/math-intrinsics/package.json"                                                        
 [536] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/math-intrinsics/tsconfig.json"                                                       
 [537] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/media-typer 2/package.json"                                                          
 [538] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/media-typer/package.json"                                                            
 [539] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/memory-pager/package.json"                                                           
 [540] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/merge-descriptors 2/package.json"                                                    
 [541] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/merge-descriptors/package.json"                                                      
 [542] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/merge-stream/package.json"                                                           
 [543] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/micromatch/package.json"                                                             
 [544] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-db 2/db.json"                                                                   
 [545] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-db 2/package.json"                                                              
 [546] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-db/db.json"                                                                     
 [547] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-db/package.json"                                                                
 [548] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-types 2/package.json"                                                           
 [549] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-types/package.json"                                                             
 [550] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mimic-fn/package.json"                                                               
 [551] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minimatch/dist/commonjs/package.json"                                                
 [552] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minimatch/dist/esm/package.json"                                                     
 [553] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minimatch/package.json"                                                              
 [554] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass 2/dist/commonjs/package.json"                                               
 [555] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass 2/dist/esm/package.json"                                                    
 [556] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass 2/package.json"                                                             
 [557] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass/dist/commonjs/package.json"                                                 
 [558] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass/dist/esm/package.json"                                                      
 [559] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass/package.json"                                                               
 [560] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongodb 2/package.json"                                                              
 [561] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongodb 2/tsconfig.json"                                                             
 [562] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongodb-connection-string-url/package.json"                                          
 [563] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongodb/package.json"                                                                
 [564] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongodb/tsconfig.json"                                                               
 [565] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongoose/package.json"                                                               
 [566] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mpath 2/package.json"                                                                
 [567] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mpath/package.json"                                                                  
 [568] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mquery 2/package.json"                                                               
 [569] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mquery/package.json"                                                                 
 [570] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ms 2/package.json"                                                                   
 [571] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ms/package.json"                                                                     
 [572] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/msgpackr-extract/package.json"                                                       
 [573] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/msgpackr/package.json"                                                               
 [574] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/napi-postinstall/package.json"                                                       
 [575] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/natural-compare/package.json"                                                        
 [576] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/negotiator 2/package.json"                                                           
 [577] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/negotiator/package.json"                                                             
 [578] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-abort-controller/package.json"                                                  
 [579] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-gyp-build-optional-packages/package.json"                                       
 [580] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-int64/package.json"                                                             
 [581] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases 2/data/processed/envs.json"                                            
 [582] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases 2/data/release-schedule/release-schedule.json"                         
 [583] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases 2/package.json"                                                        
 [584] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases/data/processed/envs.json"                                              
 [585] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases/data/release-schedule/release-schedule.json"                           
 [586] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases/package.json"                                                          
 [587] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/normalize-path/package.json"                                                         
 [588] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/npm-run-path 2/package.json"                                                         
 [589] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/npm-run-path/package.json"                                                           
 [590] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-assign 2/package.json"                                                        
 [591] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-assign/package.json"                                                          
 [592] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-inspect 2/package-support.json"                                               
 [593] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-inspect 2/package.json"                                                       
 [594] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-inspect/package-support.json"                                                 
 [595] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-inspect/package.json"                                                         
 [596] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/on-finished 2/package.json"                                                          
 [597] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/on-finished/package.json"                                                            
 [598] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/once/package.json"                                                                   
 [599] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/onetime 2/package.json"                                                              
 [600] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/onetime/package.json"                                                                
 [601] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/p-limit 2/package.json"                                                              
 [602] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/p-limit/package.json"                                                                
 [603] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/p-locate/node_modules/p-limit/package.json"                                          
 [604] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/p-locate/package.json"                                                               
 [605] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/p-try/package.json"                                                                  
 [606] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/package-json-from-dist/dist/commonjs/package.json"                                   
 [607] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/package-json-from-dist/dist/esm/package.json"                                        
 [608] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/package-json-from-dist/package.json"                                                 
 [609] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/parse-json/package.json"                                                             
 [610] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/parseurl 2/package.json"                                                             
 [611] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/parseurl/package.json"                                                               
 [612] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-exists 2/package.json"                                                          
 [613] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-exists/package.json"                                                            
 [614] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-is-absolute/package.json"                                                       
 [615] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-key/package.json"                                                               
 [616] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/dist/commonjs/package.json"                                            
 [617] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/dist/esm/package.json"                                                 
 [618] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/node_modules/lru-cache/dist/commonjs/package.json"                     
 [619] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/node_modules/lru-cache/dist/esm/package.json"                          
 [620] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/node_modules/lru-cache/package.json"                                   
 [621] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/package.json"                                                          
 [622] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/dist/commonjs/package.json"                                              
 [623] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/dist/esm/package.json"                                                   
 [624] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/node_modules/lru-cache/dist/commonjs/package.json"                       
 [625] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/node_modules/lru-cache/dist/esm/package.json"                            
 [626] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/node_modules/lru-cache/package.json"                                     
 [627] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/package.json"                                                            
 [628] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-to-regexp 2/package.json"                                                       
 [629] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-to-regexp/package.json"                                                         
 [630] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/picocolors/package.json"                                                             
 [631] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/picomatch/package.json"                                                              
 [632] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pirates/package.json"                                                                
 [633] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pkg-dir/package.json"                                                                
 [634] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pretty-format 2/node_modules/ansi-styles/package.json"                               
 [635] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pretty-format 2/package.json"                                                        
 [636] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pretty-format/node_modules/ansi-styles/package.json"                                 
 [637] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pretty-format/package.json"                                                          
 [638] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/proxy-addr 2/package.json"                                                           
 [639] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/proxy-addr/package.json"                                                             
 [640] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/punycode/package.json"                                                               
 [641] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pure-rand/lib/esm/package.json"                                                      
 [642] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pure-rand/package.json"                                                              
 [643] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/qs 2/package.json"                                                                   
 [644] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/qs/package.json"                                                                     
 [645] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/range-parser 2/package.json"                                                         
 [646] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/range-parser/package.json"                                                           
 [647] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/raw-body 2/package.json"                                                             
 [648] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/raw-body/package.json"                                                               
 [649] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/react-is/package.json"                                                               
 [650] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/redis-errors 2/package.json"                                                         
 [651] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/redis-errors/package.json"                                                           
 [652] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/redis-parser 2/package.json"                                                         
 [653] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/redis-parser/package.json"                                                           
 [654] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/require-directory/package.json"                                                      
 [655] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/resolve-cwd 2/package.json"                                                          
 [656] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/resolve-cwd/package.json"                                                            
 [657] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/resolve-from/package.json"                                                           
 [658] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/router 2/package.json"                                                               
 [659] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/router/package.json"                                                                 
 [660] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/safe-buffer 2/package.json"                                                          
 [661] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/safe-buffer/package.json"                                                            
 [662] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/safer-buffer 2/package.json"                                                         
 [663] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/safer-buffer/package.json"                                                           
 [664] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/semver/package.json"                                                                 
 [665] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/send 2/package.json"                                                                 
 [666] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/send/package.json"                                                                   
 [667] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/serve-static 2/package.json"                                                         
 [668] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/serve-static/package.json"                                                           
 [669] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/setprototypeof 2/package.json"                                                       
 [670] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/setprototypeof/package.json"                                                         
 [671] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/shebang-command 2/package.json"                                                      
 [672] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/shebang-command/package.json"                                                        
 [673] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/shebang-regex/package.json"                                                          
 [674] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel 2/package.json"                                                         
 [675] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel 2/tsconfig.json"                                                        
 [676] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-list 2/package.json"                                                    
 [677] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-list 2/tsconfig.json"                                                   
 [678] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-list/package.json"                                                      
 [679] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-list/tsconfig.json"                                                     
 [680] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-map 2/package.json"                                                     
 [681] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-map 2/tsconfig.json"                                                    
 [682] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-map/package.json"                                                       
 [683] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-map/tsconfig.json"                                                      
 [684] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-weakmap 2/package.json"                                                 
 [685] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-weakmap 2/tsconfig.json"                                                
 [686] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-weakmap/package.json"                                                   
 [687] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-weakmap/tsconfig.json"                                                  
 [688] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel/package.json"                                                           
 [689] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel/tsconfig.json"                                                          
 [690] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/sift 2/package.json"                                                                 
 [691] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/sift/package.json"                                                                   
 [692] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/signal-exit/dist/cjs/package.json"                                                   
 [693] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/signal-exit/dist/mjs/package.json"                                                   
 [694] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/signal-exit/package.json"                                                            
 [695] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/slash/package.json"                                                                  
 [696] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/source-map-support/package.json"                                                     
 [697] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/source-map/package.json"                                                             
 [698] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/sparse-bitfield/package.json"                                                        
 [699] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/sprintf-js/bower.json"                                                               
 [700] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/sprintf-js/package.json"                                                             
 [701] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/stack-utils/package.json"                                                            
 [702] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/standard-as-callback 2/package.json"                                                 
 [703] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/standard-as-callback/package.json"                                                   
 [704] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/statuses 2/codes.json"                                                               
 [705] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/statuses 2/package.json"                                                             
 [706] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/statuses/codes.json"                                                                 
 [707] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/statuses/package.json"                                                               
 [708] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-length/node_modules/ansi-regex/package.json"                                  
 [709] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-length/node_modules/strip-ansi/package.json"                                  
 [710] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-length/package.json"                                                          
 [711] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs 2/node_modules/ansi-regex/package.json"                             
 [712] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs 2/node_modules/emoji-regex/package.json"                            
 [713] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs 2/node_modules/strip-ansi/package.json"                             
 [714] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs 2/package.json"                                                     
 [715] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs/node_modules/ansi-regex/package.json"                               
 [716] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs/node_modules/emoji-regex/package.json"                              
 [717] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs/node_modules/strip-ansi/package.json"                               
 [718] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs/package.json"                                                       
 [719] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width/package.json"                                                           
 [720] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi 2/package.json"                                                           
 [721] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi-cjs 2/node_modules/ansi-regex/package.json"                               
 [722] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi-cjs 2/package.json"                                                       
 [723] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi-cjs/node_modules/ansi-regex/package.json"                                 
 [724] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi-cjs/package.json"                                                         
 [725] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi/package.json"                                                             
 [726] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-bom/package.json"                                                              
 [727] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-final-newline 2/package.json"                                                  
 [728] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-final-newline/package.json"                                                    
 [729] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-json-comments/package.json"                                                    
 [730] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/supports-color/package.json"                                                         
 [731] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/synckit/package.json"                                                                
 [732] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude 2/node_modules/brace-expansion/package.json"                            
 [733] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude 2/node_modules/glob/package.json"                                       
 [734] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude 2/node_modules/minimatch/package.json"                                  
 [735] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude 2/package.json"                                                         
 [736] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude/node_modules/brace-expansion/package.json"                              
 [737] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude/node_modules/glob/package.json"                                         
 [738] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude/node_modules/minimatch/package.json"                                    
 [739] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude/package.json"                                                           
 [740] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/tmpl/package.json"                                                                   
 [741] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/to-regex-range/package.json"                                                         
 [742] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/toidentifier 2/package.json"                                                         
 [743] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/toidentifier/package.json"                                                           
 [744] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/tr46/lib/mappingTable.json"                                                          
 [745] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/tr46/package.json"                                                                   
 [746] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/tslib/modules/package.json"                                                          
 [747] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/tslib/package.json"                                                                  
 [748] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/type-detect/package.json"                                                            
 [749] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/type-fest/package.json"                                                              
 [750] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/type-is 2/package.json"                                                              
 [751] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/type-is/package.json"                                                                
 [752] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/undici-types/package.json"                                                           
 [753] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/unpipe 2/package.json"                                                               
 [754] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/unpipe/package.json"                                                                 
 [755] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/unrs-resolver/package.json"                                                          
 [756] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/update-browserslist-db/package.json"                                                 
 [757] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/uuid/package.json"                                                                   
 [758] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/v8-to-istanbul 2/package.json"                                                       
 [759] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/v8-to-istanbul/package.json"                                                         
 [760] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/vary 2/package.json"                                                                 
 [761] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/vary/package.json"                                                                   
 [762] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/walker/package.json"                                                                 
 [763] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/webidl-conversions/package.json"                                                     
 [764] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/whatwg-url/package.json"                                                             
 [765] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/which/package.json"                                                                  
 [766] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi 2/node_modules/ansi-styles/package.json"                                   
 [767] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi 2/package.json"                                                            
 [768] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi-cjs/node_modules/ansi-regex/package.json"                                  
 [769] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi-cjs/node_modules/emoji-regex/package.json"                                 
 [770] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi-cjs/node_modules/string-width/package.json"                                
 [771] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi-cjs/node_modules/strip-ansi/package.json"                                  
 [772] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi-cjs/package.json"                                                          
 [773] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi/node_modules/ansi-styles/package.json"                                     
 [774] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi/package.json"                                                              
 [775] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrappy/package.json"                                                                 
 [776] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/write-file-atomic 2/package.json"                                                    
 [777] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/write-file-atomic/package.json"                                                      
 [778] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/y18n/package.json"                                                                   
 [779] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yallist/package.json"                                                                
 [780] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/helpers/package.json"                                                        
 [781] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/be.json"                                                             
 [782] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/cs.json"                                                             
 [783] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/de.json"                                                             
 [784] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/en.json"                                                             
 [785] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/es.json"                                                             
 [786] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/fi.json"                                                             
 [787] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/fr.json"                                                             
 [788] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/hi.json"                                                             
 [789] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/hu.json"                                                             
 [790] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/id.json"                                                             
 [791] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/it.json"                                                             
 [792] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/ja.json"                                                             
 [793] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/ko.json"                                                             
 [794] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/nb.json"                                                             
 [795] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/nl.json"                                                             
 [796] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/nn.json"                                                             
 [797] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/pirate.json"                                                         
 [798] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/pl.json"                                                             
 [799] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/pt_BR.json"                                                          
 [800] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/pt.json"                                                             
 [801] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/ru.json"                                                             
 [802] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/th.json"                                                             
 [803] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/tr.json"                                                             
 [804] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/uk_UA.json"                                                          
 [805] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/uz.json"                                                             
 [806] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/zh_CN.json"                                                          
 [807] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/zh_TW.json"                                                          
 [808] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/node_modules/ansi-regex/package.json"                                        
 [809] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/node_modules/emoji-regex/package.json"                                       
 [810] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/node_modules/string-width/package.json"                                      
 [811] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/node_modules/strip-ansi/package.json"                                        
 [812] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/package.json"                                                                
 [813] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs-parser/package.json"                                                           
 [814] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/helpers/package.json"                                                          
 [815] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/be.json"                                                               
 [816] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/cs.json"                                                               
 [817] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/de.json"                                                               
 [818] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/en.json"                                                               
 [819] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/es.json"                                                               
 [820] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/fi.json"                                                               
 [821] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/fr.json"                                                               
 [822] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/hi.json"                                                               
 [823] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/hu.json"                                                               
 [824] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/id.json"                                                               
 [825] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/it.json"                                                               
 [826] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/ja.json"                                                               
 [827] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/ko.json"                                                               
 [828] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/nb.json"                                                               
 [829] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/nl.json"                                                               
 [830] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/nn.json"                                                               
 [831] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/pirate.json"                                                           
 [832] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/pl.json"                                                               
 [833] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/pt_BR.json"                                                            
 [834] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/pt.json"                                                               
 [835] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/ru.json"                                                               
 [836] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/th.json"                                                               
 [837] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/tr.json"                                                               
 [838] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/uk_UA.json"                                                            
 [839] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/uz.json"                                                               
 [840] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/zh_CN.json"                                                            
 [841] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/zh_TW.json"                                                            
 [842] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/node_modules/ansi-regex/package.json"                                          
 [843] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/node_modules/emoji-regex/package.json"                                         
 [844] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/node_modules/string-width/package.json"                                        
 [845] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/node_modules/strip-ansi/package.json"                                          
 [846] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/package.json"                                                                  
 [847] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yocto-queue/package.json"                                                            
 [848] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/package-lock.json"                                                                                
 [849] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/package.json"                                                                                     
 [850] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@babel/runtime/helpers/esm/package.json"                                                     
 [851] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@babel/runtime/package.json"                                                                 
 [852] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/abi/package.json"                                                             
 [853] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/abstract-provider/package.json"                                               
 [854] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/abstract-signer/package.json"                                                 
 [855] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/address/package.json"                                                         
 [856] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/base64/package.json"                                                          
 [857] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/basex/package.json"                                                           
 [858] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/bignumber/package.json"                                                       
 [859] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/bytes/package.json"                                                           
 [860] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/constants/package.json"                                                       
 [861] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/contracts/package.json"                                                       
 [862] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/hash/package.json"                                                            
 [863] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/hdnode/package.json"                                                          
 [864] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/json-wallets/package.json"                                                    
 [865] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/keccak256/package.json"                                                       
 [866] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/logger/package.json"                                                          
 [867] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/networks/package.json"                                                        
 [868] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/pbkdf2/package.json"                                                          
 [869] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/properties/package.json"                                                      
 [870] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/providers/package.json"                                                       
 [871] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/random/package.json"                                                          
 [872] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/rlp/package.json"                                                             
 [873] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/sha2/package.json"                                                            
 [874] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/signing-key/package.json"                                                     
 [875] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/strings/package.json"                                                         
 [876] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/transactions/package.json"                                                    
 [877] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/units/package.json"                                                           
 [878] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/wallet/package.json"                                                          
 [879] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/web/package.json"                                                             
 [880] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/wordlists/package.json"                                                       
 [881] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ioredis/commands/built/commands.json"                                                       
 [882] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ioredis/commands/package.json"                                                              
 [883] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@noble/curves/esm/package.json"                                                              
 [884] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@noble/curves/package.json"                                                                  
 [885] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@noble/curves/src/package.json"                                                              
 [886] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@noble/hashes/esm/package.json"                                                              
 [887] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@noble/hashes/package.json"                                                                  
 [888] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/bloom/package.json"                                                                   
 [889] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/client/dist/package.json"                                                             
 [890] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/client/package.json"                                                                  
 [891] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/graph/package.json"                                                                   
 [892] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/json/package.json"                                                                    
 [893] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/search/package.json"                                                                  
 [894] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/time-series/package.json"                                                             
 [895] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@solana/buffer-layout/package.json"                                                          
 [896] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@solana/codecs-core/package.json"                                                            
 [897] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@solana/codecs-numbers/package.json"                                                         
 [898] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@solana/errors/package.json"                                                                 
 [899] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@solana/web3.js/package.json"                                                                
 [900] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_apply_decorated_descriptor/package.json"                                     
 [901] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_apply_decs_2203_r/package.json"                                              
 [902] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_array_like_to_array/package.json"                                            
 [903] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_array_with_holes/package.json"                                               
 [904] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_array_without_holes/package.json"                                            
 [905] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_assert_this_initialized/package.json"                                        
 [906] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_async_generator_delegate/package.json"                                       
 [907] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_async_generator/package.json"                                                
 [908] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_async_iterator/package.json"                                                 
 [909] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_async_to_generator/package.json"                                             
 [910] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_await_async_generator/package.json"                                          
 [911] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_await_value/package.json"                                                    
 [912] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_call_super/package.json"                                                     
 [913] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_check_private_redeclaration/package.json"                                    
 [914] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_apply_descriptor_destructure/package.json"                             
 [915] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_apply_descriptor_get/package.json"                                     
 [916] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_apply_descriptor_set/package.json"                                     
 [917] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_apply_descriptor_update/package.json"                                  
 [918] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_call_check/package.json"                                               
 [919] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_check_private_static_access/package.json"                              
 [920] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_check_private_static_field_descriptor/package.json"                    
 [921] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_extract_field_descriptor/package.json"                                 
 [922] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_name_tdz_error/package.json"                                           
 [923] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_destructure/package.json"                                
 [924] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_get/package.json"                                        
 [925] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_init/package.json"                                       
 [926] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_loose_base/package.json"                                 
 [927] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_loose_key/package.json"                                  
 [928] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_set/package.json"                                        
 [929] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_update/package.json"                                     
 [930] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_method_get/package.json"                                       
 [931] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_method_init/package.json"                                      
 [932] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_method_set/package.json"                                       
 [933] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_static_private_field_destructure/package.json"                         
 [934] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_static_private_field_spec_get/package.json"                            
 [935] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_static_private_field_spec_set/package.json"                            
 [936] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_static_private_field_update/package.json"                              
 [937] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_static_private_method_get/package.json"                                
 [938] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_construct/package.json"                                                      
 [939] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_create_class/package.json"                                                   
 [940] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_create_for_of_iterator_helper_loose/package.json"                            
 [941] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_create_super/package.json"                                                   
 [942] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_decorate/package.json"                                                       
 [943] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_defaults/package.json"                                                       
 [944] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_define_enumerable_properties/package.json"                                   
 [945] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_define_property/package.json"                                                
 [946] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_dispose/package.json"                                                        
 [947] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_export_star/package.json"                                                    
 [948] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_extends/package.json"                                                        
 [949] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_get_prototype_of/package.json"                                               
 [950] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_get/package.json"                                                            
 [951] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_identity/package.json"                                                       
 [952] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_inherits_loose/package.json"                                                 
 [953] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_inherits/package.json"                                                       
 [954] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_initializer_define_property/package.json"                                    
 [955] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_initializer_warning_helper/package.json"                                     
 [956] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_instanceof/package.json"                                                     
 [957] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_interop_require_default/package.json"                                        
 [958] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_interop_require_wildcard/package.json"                                       
 [959] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_is_native_function/package.json"                                             
 [960] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_is_native_reflect_construct/package.json"                                    
 [961] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_iterable_to_array_limit_loose/package.json"                                  
 [962] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_iterable_to_array_limit/package.json"                                        
 [963] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_iterable_to_array/package.json"                                              
 [964] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_jsx/package.json"                                                            
 [965] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_new_arrow_check/package.json"                                                
 [966] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_non_iterable_rest/package.json"                                              
 [967] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_non_iterable_spread/package.json"                                            
 [968] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_object_destructuring_empty/package.json"                                     
 [969] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_object_spread_props/package.json"                                            
 [970] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_object_spread/package.json"                                                  
 [971] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_object_without_properties_loose/package.json"                                
 [972] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_object_without_properties/package.json"                                      
 [973] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_overload_yield/package.json"                                                 
 [974] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_possible_constructor_return/package.json"                                    
 [975] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_read_only_error/package.json"                                                
 [976] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_set_prototype_of/package.json"                                               
 [977] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_set/package.json"                                                            
 [978] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_skip_first_generator_next/package.json"                                      
 [979] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_sliced_to_array_loose/package.json"                                          
 [980] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_sliced_to_array/package.json"                                                
 [981] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_super_prop_base/package.json"                                                
 [982] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_tagged_template_literal_loose/package.json"                                  
 [983] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_tagged_template_literal/package.json"                                        
 [984] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_throw/package.json"                                                          
 [985] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_to_array/package.json"                                                       
 [986] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_to_consumable_array/package.json"                                            
 [987] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_to_primitive/package.json"                                                   
 [988] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_to_property_key/package.json"                                                
 [989] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_add_disposable_resource/package.json"                                     
 [990] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_decorate/package.json"                                                    
 [991] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_dispose_resources/package.json"                                           
 [992] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_generator/package.json"                                                   
 [993] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_metadata/package.json"                                                    
 [994] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_param/package.json"                                                       
 [995] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_values/package.json"                                                      
 [996] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_type_of/package.json"                                                        
 [997] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_unsupported_iterable_to_array/package.json"                                  
 [998] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_update/package.json"                                                         
 [999] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_using_ctx/package.json"                                                      
[1000] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_using/package.json"                                                          
 [ reached 'max' / getOption("max.print") -- omitted 1173918 entries ]
> list.files(
+     "/Users/shekhargoud",
+     pattern = "\\.json$",
+     recursive = TRUE,
+     full.names = TRUE
+ )
   [1] "/Users/shekhargoud/Applications/WebCatalog Apps/ACE Online.app/Contents/Frameworks/Electron Framework.framework/Libraries/vk_swiftshader_icd.json"                 
   [2] "/Users/shekhargoud/Applications/WebCatalog Apps/ACE Online.app/Contents/Frameworks/Electron Framework.framework/Versions/A/Libraries/vk_swiftshader_icd.json"      
   [3] "/Users/shekhargoud/Applications/WebCatalog Apps/ACE Online.app/Contents/Frameworks/Electron Framework.framework/Versions/Current/Libraries/vk_swiftshader_icd.json"
   [4] "/Users/shekhargoud/Applications/WebCatalog Apps/ACE Online.app/Contents/Resources/app.asar.unpacked/build/app.json"                                                
   [5] "/Users/shekhargoud/Applications/WebCatalog Apps/ACE Online.app/Contents/Resources/app.asar.unpacked/package.json"                                                  
   [6] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb4410888a7b66fa988/dataset.json"             
   [7] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb6410888a7b66fa998/dataset.json"             
   [8] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb6410888a7b66fa9a0/dataset.json"             
   [9] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142eb9410888a7b66fa9b8/dataset.json"             
  [10] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebb410888a7b66fa9c0/dataset.json"             
  [11] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebb410888a7b66fa9d0/dataset.json"             
  [12] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebc410888a7b66fa9e0/dataset.json"             
  [13] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebc410888a7b66fa9ee/dataset.json"             
  [14] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebd410888a7b66faa01/dataset.json"             
  [15] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebe410888a7b66faa2e/dataset.json"             
  [16] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebe410888a7b66faa36/dataset.json"             
  [17] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa3e/dataset.json"             
  [18] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa46/dataset.json"             
  [19] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa4e/dataset.json"             
  [20] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa56/dataset.json"             
  [21] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa5e/dataset.json"             
  [22] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa66/dataset.json"             
  [23] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa72/dataset.json"             
  [24] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa7a/dataset.json"             
  [25] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa82/dataset.json"             
  [26] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa8a/dataset.json"             
  [27] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa96/dataset.json"             
  [28] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ebf410888a7b66faa9e/dataset.json"             
  [29] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec0410888a7b66faaae/dataset.json"             
  [30] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66faad2/dataset.json"             
  [31] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66faae9/dataset.json"             
  [32] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec1410888a7b66fab22/dataset.json"             
  [33] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec3410888a7b66fab32/dataset.json"             
  [34] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec3410888a7b66fab3e/dataset.json"             
  [35] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec4410888a7b66fab58/dataset.json"             
  [36] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec4410888a7b66fab60/dataset.json"             
  [37] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ec8410888a7b66fab88/dataset.json"             
  [38] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ed7410888a7b66faba6/dataset.json"             
  [39] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_69142ee2410888a7b66fabd0/dataset.json"             
  [40] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/68e48f1a803e577b1177152e_6912a59f410888a7b66ed6cf_user/dataset.json"                                 
  [41] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted/6a71afb76efc3069c5f69db0_6a8312cf509e6ab38aa5f4b9_6a71b6de6efc3069c5f69ef0/dataset.json"             
  [42] "/Users/shekhargoud/Downloads/all/Documents/code/static/vendor/bootstrap-icons/bootstrap-icons.json"                                                                
  [43] "/Users/shekhargoud/Downloads/all/Documents/code/venv/lib/python3.13/site-packages/setuptools/config/distutils.schema.json"                                         
  [44] "/Users/shekhargoud/Downloads/all/Documents/code/venv/lib/python3.13/site-packages/setuptools/config/setuptools.schema.json"                                        
  [45] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ampproject 2/remapping/package.json"                                                
  [46] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ampproject/remapping/package.json"                                                  
  [47] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/code-frame/package.json"                                                    
  [48] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/corejs2-built-ins.json"                                    
  [49] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/corejs3-shipped-proposals.json"                            
  [50] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/native-modules.json"                                       
  [51] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/overlapping-plugins.json"                                  
  [52] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/plugin-bugfixes.json"                                      
  [53] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/data/plugins.json"                                              
  [54] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/compat-data/package.json"                                                   
  [55] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/core/package.json"                                                          
  [56] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/generator/package.json"                                                     
  [57] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-compilation-targets/package.json"                                    
  [58] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-globals/data/browser-upper.json"                                     
  [59] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-globals/data/builtin-lower.json"                                     
  [60] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-globals/data/builtin-upper.json"                                     
  [61] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-globals/package.json"                                                
  [62] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-module-imports/package.json"                                         
  [63] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-module-transforms/package.json"                                      
  [64] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-plugin-utils/package.json"                                           
  [65] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-string-parser/package.json"                                          
  [66] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-validator-identifier/package.json"                                   
  [67] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helper-validator-option/package.json"                                       
  [68] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/helpers/package.json"                                                       
  [69] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/parser/package.json"                                                        
  [70] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-async-generators/package.json"                                
  [71] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-bigint/package.json"                                          
  [72] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-class-properties/package.json"                                
  [73] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-class-static-block/package.json"                              
  [74] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-import-attributes/package.json"                               
  [75] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-import-meta/package.json"                                     
  [76] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-json-strings/package.json"                                    
  [77] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-jsx/package.json"                                             
  [78] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-logical-assignment-operators/package.json"                    
  [79] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-nullish-coalescing-operator/package.json"                     
  [80] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-numeric-separator/package.json"                               
  [81] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-object-rest-spread/package.json"                              
  [82] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-optional-catch-binding/package.json"                          
  [83] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-optional-chaining/package.json"                               
  [84] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-private-property-in-object/package.json"                      
  [85] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-top-level-await/package.json"                                 
  [86] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/plugin-syntax-typescript/package.json"                                      
  [87] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/template/package.json"                                                      
  [88] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/traverse/package.json"                                                      
  [89] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel 2/types/package.json"                                                         
  [90] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/code-frame/package.json"                                                      
  [91] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/corejs2-built-ins.json"                                      
  [92] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/corejs3-shipped-proposals.json"                              
  [93] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/native-modules.json"                                         
  [94] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/overlapping-plugins.json"                                    
  [95] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/plugin-bugfixes.json"                                        
  [96] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/data/plugins.json"                                                
  [97] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/compat-data/package.json"                                                     
  [98] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/core/node_modules/semver/package.json"                                        
  [99] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/core/package.json"                                                            
 [100] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/generator/package.json"                                                       
 [101] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-compilation-targets/node_modules/semver/package.json"                  
 [102] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-compilation-targets/package.json"                                      
 [103] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-globals/data/browser-upper.json"                                       
 [104] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-globals/data/builtin-lower.json"                                       
 [105] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-globals/data/builtin-upper.json"                                       
 [106] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-globals/package.json"                                                  
 [107] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-module-imports/package.json"                                           
 [108] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-module-transforms/package.json"                                        
 [109] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-plugin-utils/package.json"                                             
 [110] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-string-parser/package.json"                                            
 [111] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-validator-identifier/package.json"                                     
 [112] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helper-validator-option/package.json"                                         
 [113] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/helpers/package.json"                                                         
 [114] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/parser/package.json"                                                          
 [115] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-async-generators/package.json"                                  
 [116] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-bigint/package.json"                                            
 [117] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-class-properties/package.json"                                  
 [118] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-class-static-block/package.json"                                
 [119] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-import-attributes/package.json"                                 
 [120] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-import-meta/package.json"                                       
 [121] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-json-strings/package.json"                                      
 [122] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-jsx/package.json"                                               
 [123] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-logical-assignment-operators/package.json"                      
 [124] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-nullish-coalescing-operator/package.json"                       
 [125] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-numeric-separator/package.json"                                 
 [126] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-object-rest-spread/package.json"                                
 [127] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-optional-catch-binding/package.json"                            
 [128] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-optional-chaining/package.json"                                 
 [129] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-private-property-in-object/package.json"                        
 [130] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-top-level-await/package.json"                                   
 [131] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/plugin-syntax-typescript/package.json"                                        
 [132] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/template/package.json"                                                        
 [133] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/traverse/package.json"                                                        
 [134] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@babel/types/package.json"                                                           
 [135] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe 2/v8-coverage/dist/lib/package.json"                                           
 [136] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe 2/v8-coverage/dist/lib/tsconfig.json"                                          
 [137] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe 2/v8-coverage/package.json"                                                    
 [138] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe 2/v8-coverage/tsconfig.json"                                                   
 [139] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe/v8-coverage/dist/lib/package.json"                                             
 [140] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe/v8-coverage/dist/lib/tsconfig.json"                                            
 [141] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe/v8-coverage/package.json"                                                      
 [142] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@bcoe/v8-coverage/tsconfig.json"                                                     
 [143] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ioredis 2/commands/built/commands.json"                                             
 [144] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ioredis 2/commands/package.json"                                                    
 [145] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ioredis/commands/built/commands.json"                                               
 [146] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ioredis/commands/package.json"                                                      
 [147] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@isaacs 2/cliui/package.json"                                                        
 [148] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@isaacs/cliui/package.json"                                                          
 [149] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@istanbuljs 2/load-nyc-config/package.json"                                          
 [150] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@istanbuljs 2/schema/package.json"                                                   
 [151] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@istanbuljs/load-nyc-config/package.json"                                            
 [152] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@istanbuljs/schema/package.json"                                                     
 [153] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/console/package.json"                                                          
 [154] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/core/package.json"                                                             
 [155] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/diff-sequences/package.json"                                                   
 [156] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/environment/package.json"                                                      
 [157] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/expect-utils/package.json"                                                     
 [158] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/expect/package.json"                                                           
 [159] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/fake-timers/package.json"                                                      
 [160] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/get-type/package.json"                                                         
 [161] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/globals/package.json"                                                          
 [162] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/pattern/api-extractor.json"                                                    
 [163] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/pattern/package.json"                                                          
 [164] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/pattern/tsconfig.json"                                                         
 [165] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/reporters/package.json"                                                        
 [166] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/schemas/package.json"                                                          
 [167] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/snapshot-utils/api-extractor.json"                                             
 [168] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/snapshot-utils/package.json"                                                   
 [169] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/snapshot-utils/tsconfig.json"                                                  
 [170] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/source-map/package.json"                                                       
 [171] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/test-result/package.json"                                                      
 [172] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/test-sequencer/package.json"                                                   
 [173] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/transform/package.json"                                                        
 [174] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jest/types/package.json"                                                            
 [175] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell 2/gen-mapping/package.json"                                              
 [176] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell 2/resolve-uri/package.json"                                              
 [177] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell 2/sourcemap-codec/package.json"                                          
 [178] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell 2/trace-mapping/package.json"                                            
 [179] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell/gen-mapping/package.json"                                                
 [180] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell/resolve-uri/package.json"                                                
 [181] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell/sourcemap-codec/package.json"                                            
 [182] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@jridgewell/trace-mapping/package.json"                                              
 [183] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@mongodb-js/saslprep/package.json"                                                   
 [184] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@msgpackr-extract/msgpackr-extract-darwin-arm64/package.json"                        
 [185] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@pkgjs 2/parseargs/package.json"                                                     
 [186] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@pkgjs/parseargs/package.json"                                                       
 [187] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@pkgr 2/core/package.json"                                                           
 [188] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@pkgr/core/package.json"                                                             
 [189] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/compiler/package.json"                                           
 [190] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/errors/package.json"                                             
 [191] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/package.json"                                                    
 [192] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/parser/package.json"                                             
 [193] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/syntax/package.json"                                             
 [194] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/system/package.json"                                             
 [195] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/type/package.json"                                               
 [196] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair 2/typebox/value/package.json"                                              
 [197] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/compiler/package.json"                                             
 [198] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/errors/package.json"                                               
 [199] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/package.json"                                                      
 [200] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/parser/package.json"                                               
 [201] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/syntax/package.json"                                               
 [202] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/system/package.json"                                               
 [203] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/type/package.json"                                                 
 [204] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinclair/typebox/value/package.json"                                                
 [205] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinonjs 2/commons/package.json"                                                     
 [206] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinonjs 2/fake-timers/package.json"                                                 
 [207] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinonjs/commons/package.json"                                                       
 [208] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@sinonjs/fake-timers/package.json"                                                   
 [209] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/babel__core/package.json"                                                     
 [210] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/babel__generator/package.json"                                                
 [211] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/babel__template/package.json"                                                 
 [212] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/babel__traverse/package.json"                                                 
 [213] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/istanbul-lib-coverage/package.json"                                           
 [214] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/istanbul-lib-report/package.json"                                             
 [215] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/istanbul-reports/package.json"                                                
 [216] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/node/package.json"                                                            
 [217] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/stack-utils/package.json"                                                     
 [218] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/webidl-conversions/package.json"                                              
 [219] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/whatwg-url/package.json"                                                      
 [220] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/yargs-parser/package.json"                                                    
 [221] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@types/yargs/package.json"                                                           
 [222] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ungap 2/structured-clone/cjs/package.json"                                          
 [223] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ungap 2/structured-clone/package.json"                                              
 [224] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ungap/structured-clone/cjs/package.json"                                            
 [225] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@ungap/structured-clone/package.json"                                                
 [226] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/@unrs/resolver-binding-darwin-arm64/package.json"                                    
 [227] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/accepts 2/package.json"                                                              
 [228] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/accepts/package.json"                                                                
 [229] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ansi-escapes/package.json"                                                           
 [230] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ansi-regex/package.json"                                                             
 [231] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ansi-styles/package.json"                                                            
 [232] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/anymatch/package.json"                                                               
 [233] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/argparse/package.json"                                                               
 [234] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-jest/package.json"                                                             
 [235] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-plugin-istanbul/package.json"                                                  
 [236] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-plugin-jest-hoist/package.json"                                                
 [237] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-preset-current-node-syntax 2/package.json"                                     
 [238] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-preset-current-node-syntax/package.json"                                       
 [239] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/babel-preset-jest/package.json"                                                      
 [240] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/balanced-match/package.json"                                                         
 [241] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/body-parser 2/package.json"                                                          
 [242] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/body-parser/package.json"                                                            
 [243] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/brace-expansion/package.json"                                                        
 [244] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/braces/package.json"                                                                 
 [245] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/browserslist/package.json"                                                           
 [246] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bser/package.json"                                                                   
 [247] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson 2/package.json"                                                                 
 [248] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson 2/vendor/base64/package.json"                                                   
 [249] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson 2/vendor/text-encoding/package.json"                                            
 [250] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson/package.json"                                                                   
 [251] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson/vendor/base64/package.json"                                                     
 [252] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bson/vendor/text-encoding/package.json"                                              
 [253] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/buffer-from/package.json"                                                            
 [254] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bullmq/package.json"                                                                 
 [255] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bytes 2/package.json"                                                                
 [256] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/bytes/package.json"                                                                  
 [257] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bind-apply-helpers 2/package.json"                                              
 [258] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bind-apply-helpers 2/tsconfig.json"                                             
 [259] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bind-apply-helpers/package.json"                                                
 [260] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bind-apply-helpers/tsconfig.json"                                               
 [261] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bound 2/package.json"                                                           
 [262] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bound 2/tsconfig.json"                                                          
 [263] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bound/package.json"                                                             
 [264] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/call-bound/tsconfig.json"                                                            
 [265] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/callsites/package.json"                                                              
 [266] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/camelcase 2/package.json"                                                            
 [267] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/camelcase/package.json"                                                              
 [268] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/caniuse-lite/package.json"                                                           
 [269] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/chalk/package.json"                                                                  
 [270] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/char-regex/package.json"                                                             
 [271] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ci-info/package.json"                                                                
 [272] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ci-info/vendors.json"                                                                
 [273] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cjs-module-lexer/package.json"                                                       
 [274] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/node_modules/ansi-regex/package.json"                                          
 [275] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/node_modules/emoji-regex/package.json"                                         
 [276] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/node_modules/string-width/package.json"                                        
 [277] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/node_modules/strip-ansi/package.json"                                          
 [278] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/node_modules/wrap-ansi/package.json"                                           
 [279] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cliui/package.json"                                                                  
 [280] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cluster-key-slot 2/package.json"                                                     
 [281] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cluster-key-slot/package.json"                                                       
 [282] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/co/package.json"                                                                     
 [283] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/collect-v8-coverage/package.json"                                                    
 [284] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/color-convert/package.json"                                                          
 [285] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/color-name 2/package.json"                                                           
 [286] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/color-name/package.json"                                                             
 [287] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/concat-map/package.json"                                                             
 [288] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/content-disposition 2/package.json"                                                  
 [289] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/content-disposition/package.json"                                                    
 [290] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/content-type 2/package.json"                                                         
 [291] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/content-type/package.json"                                                           
 [292] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/convert-source-map/package.json"                                                     
 [293] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cookie 2/package.json"                                                               
 [294] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cookie-signature 2/package.json"                                                     
 [295] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cookie-signature/package.json"                                                       
 [296] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cookie/package.json"                                                                 
 [297] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cors 2/package.json"                                                                 
 [298] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cors/package.json"                                                                   
 [299] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cron-parser/package.json"                                                            
 [300] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/cross-spawn/package.json"                                                            
 [301] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/debug/package.json"                                                                  
 [302] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/dedent/package.json"                                                                 
 [303] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/deepmerge/package.json"                                                              
 [304] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/denque 2/package.json"                                                               
 [305] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/denque/package.json"                                                                 
 [306] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/depd 2/package.json"                                                                 
 [307] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/depd/package.json"                                                                   
 [308] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/detect-libc/package.json"                                                            
 [309] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/detect-newline/package.json"                                                         
 [310] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/dunder-proto 2/package.json"                                                         
 [311] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/dunder-proto 2/tsconfig.json"                                                        
 [312] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/dunder-proto/package.json"                                                           
 [313] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/dunder-proto/tsconfig.json"                                                          
 [314] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/eastasianwidth/package.json"                                                         
 [315] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ee-first 2/package.json"                                                             
 [316] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ee-first/package.json"                                                               
 [317] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium 2/chromium-versions.json"                                       
 [318] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium 2/full-chromium-versions.json"                                  
 [319] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium 2/full-versions.json"                                           
 [320] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium 2/package.json"                                                 
 [321] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium 2/versions.json"                                                
 [322] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium/chromium-versions.json"                                         
 [323] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium/full-chromium-versions.json"                                    
 [324] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium/full-versions.json"                                             
 [325] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium/package.json"                                                   
 [326] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/electron-to-chromium/versions.json"                                                  
 [327] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/emittery/package.json"                                                               
 [328] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/emoji-regex/package.json"                                                            
 [329] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/encodeurl 2/package.json"                                                            
 [330] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/encodeurl/package.json"                                                              
 [331] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/error-ex/package.json"                                                               
 [332] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-define-property 2/package.json"                                                   
 [333] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-define-property 2/tsconfig.json"                                                  
 [334] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-define-property/package.json"                                                     
 [335] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-define-property/tsconfig.json"                                                    
 [336] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-errors 2/package.json"                                                            
 [337] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-errors 2/tsconfig.json"                                                           
 [338] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-errors/package.json"                                                              
 [339] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-errors/tsconfig.json"                                                             
 [340] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-object-atoms 2/package.json"                                                      
 [341] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-object-atoms 2/tsconfig.json"                                                     
 [342] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-object-atoms/package.json"                                                        
 [343] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/es-object-atoms/tsconfig.json"                                                       
 [344] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/escalade/package.json"                                                               
 [345] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/escape-html 2/package.json"                                                          
 [346] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/escape-html/package.json"                                                            
 [347] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/escape-string-regexp/package.json"                                                   
 [348] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/esprima/package.json"                                                                
 [349] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/etag 2/package.json"                                                                 
 [350] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/etag/package.json"                                                                   
 [351] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/execa 2/node_modules/signal-exit/package.json"                                       
 [352] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/execa 2/package.json"                                                                
 [353] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/execa/node_modules/signal-exit/package.json"                                         
 [354] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/execa/package.json"                                                                  
 [355] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/exit-x/package.json"                                                                 
 [356] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/expect/package.json"                                                                 
 [357] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/express 2/package.json"                                                              
 [358] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/express/package.json"                                                                
 [359] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fast-json-stable-stringify/benchmark/test.json"                                      
 [360] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fast-json-stable-stringify/package.json"                                             
 [361] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fb-watchman/package.json"                                                            
 [362] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fill-range/package.json"                                                             
 [363] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/finalhandler 2/package.json"                                                         
 [364] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/finalhandler/package.json"                                                           
 [365] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/find-up 2/package.json"                                                              
 [366] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/find-up/package.json"                                                                
 [367] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/foreground-child 2/dist/commonjs/package.json"                                       
 [368] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/foreground-child 2/dist/esm/package.json"                                            
 [369] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/foreground-child/dist/commonjs/package.json"                                         
 [370] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/foreground-child/dist/esm/package.json"                                              
 [371] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/foreground-child/package.json"                                                       
 [372] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/forwarded 2/package.json"                                                            
 [373] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/forwarded/package.json"                                                              
 [374] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fresh 2/package.json"                                                                
 [375] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fresh/package.json"                                                                  
 [376] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fs.realpath/package.json"                                                            
 [377] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fsevents/package 2.json"                                                             
 [378] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/fsevents/package.json"                                                               
 [379] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/function-bind 2/package.json"                                                        
 [380] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/function-bind/package.json"                                                          
 [381] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/gensync/package.json"                                                                
 [382] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-caller-file/package.json"                                                        
 [383] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-intrinsic 2/package.json"                                                        
 [384] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-intrinsic/package.json"                                                          
 [385] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-package-type 2/package.json"                                                     
 [386] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-package-type/package.json"                                                       
 [387] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-proto 2/package.json"                                                            
 [388] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-proto 2/tsconfig.json"                                                           
 [389] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-proto/package.json"                                                              
 [390] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-proto/tsconfig.json"                                                             
 [391] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/get-stream/package.json"                                                             
 [392] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/glob/dist/commonjs/package.json"                                                     
 [393] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/glob/dist/esm/package.json"                                                          
 [394] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/glob/package.json"                                                                   
 [395] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/gopd 2/package.json"                                                                 
 [396] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/gopd 2/tsconfig.json"                                                                
 [397] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/gopd/package.json"                                                                   
 [398] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/gopd/tsconfig.json"                                                                  
 [399] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/graceful-fs 2/package.json"                                                          
 [400] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/graceful-fs/package.json"                                                            
 [401] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/has-flag/package.json"                                                               
 [402] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/has-symbols 2/package.json"                                                          
 [403] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/has-symbols 2/tsconfig.json"                                                         
 [404] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/has-symbols/package.json"                                                            
 [405] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/has-symbols/tsconfig.json"                                                           
 [406] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/hasown 2/package.json"                                                               
 [407] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/hasown 2/tsconfig.json"                                                              
 [408] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/hasown/package.json"                                                                 
 [409] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/hasown/tsconfig.json"                                                                
 [410] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper 2/cjs/package.json"                                                     
 [411] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper 2/package.json"                                                         
 [412] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper 2/test/package.json"                                                    
 [413] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper/cjs/package.json"                                                       
 [414] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper/package.json"                                                           
 [415] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/html-escaper/test/package.json"                                                      
 [416] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors 2/node_modules/statuses/codes.json"                                      
 [417] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors 2/node_modules/statuses/package.json"                                    
 [418] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors 2/package.json"                                                          
 [419] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors/node_modules/statuses/codes.json"                                        
 [420] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors/node_modules/statuses/package.json"                                      
 [421] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/http-errors/package.json"                                                            
 [422] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/human-signals 2/package.json"                                                        
 [423] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/human-signals/package.json"                                                          
 [424] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/big5-added.json"                                       
 [425] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/cp936.json"                                            
 [426] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/cp949.json"                                            
 [427] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/cp950.json"                                            
 [428] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/eucjp.json"                                            
 [429] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/gb18030-ranges.json"                                   
 [430] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/gbk-added.json"                                        
 [431] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/encodings/tables/shiftjis.json"                                         
 [432] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite 2/package.json"                                                           
 [433] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/big5-added.json"                                         
 [434] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/cp936.json"                                              
 [435] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/cp949.json"                                              
 [436] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/cp950.json"                                              
 [437] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/eucjp.json"                                              
 [438] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/gb18030-ranges.json"                                     
 [439] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/gbk-added.json"                                          
 [440] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/encodings/tables/shiftjis.json"                                           
 [441] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/iconv-lite/package.json"                                                             
 [442] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/import-local 2/package.json"                                                         
 [443] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/import-local/package.json"                                                           
 [444] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/imurmurhash/package.json"                                                            
 [445] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/inflight/package.json"                                                               
 [446] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/inherits/package.json"                                                               
 [447] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ioredis 2/package.json"                                                              
 [448] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ioredis/package.json"                                                                
 [449] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ipaddr 2.js/package.json"                                                            
 [450] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ipaddr.js/package.json"                                                              
 [451] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-arrayish/package.json"                                                            
 [452] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-fullwidth-code-point/package.json"                                                
 [453] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-generator-fn/package.json"                                                        
 [454] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-number/package.json"                                                              
 [455] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-promise 2/package.json"                                                           
 [456] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-promise/package.json"                                                             
 [457] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/is-stream/package.json"                                                              
 [458] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/isexe/package.json"                                                                  
 [459] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-coverage 2/package.json"                                                
 [460] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-coverage/package.json"                                                  
 [461] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-instrument/node_modules/semver/package.json"                            
 [462] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-instrument/package.json"                                                
 [463] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-report/package.json"                                                    
 [464] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-lib-source-maps/package.json"                                               
 [465] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/istanbul-reports/package.json"                                                       
 [466] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jackspeak 2/dist/commonjs/package.json"                                              
 [467] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jackspeak 2/dist/esm/package.json"                                                   
 [468] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jackspeak/dist/commonjs/package.json"                                                
 [469] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jackspeak/dist/esm/package.json"                                                     
 [470] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jackspeak/package.json"                                                              
 [471] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest 2/package.json"                                                                 
 [472] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-changed-files/package.json"                                                     
 [473] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-circus 2/package.json"                                                          
 [474] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-circus/package.json"                                                            
 [475] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-cli/package.json"                                                               
 [476] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-config/package.json"                                                            
 [477] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-diff/package.json"                                                              
 [478] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-docblock 2/package.json"                                                        
 [479] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-docblock/package.json"                                                          
 [480] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-each/package.json"                                                              
 [481] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-environment-node/package.json"                                                  
 [482] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-haste-map 2/package.json"                                                       
 [483] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-haste-map/package.json"                                                         
 [484] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-leak-detector/package.json"                                                     
 [485] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-matcher-utils/package.json"                                                     
 [486] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-message-util/package.json"                                                      
 [487] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-mock/package.json"                                                              
 [488] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-pnp-resolver/package.json"                                                      
 [489] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-regex-util/package.json"                                                        
 [490] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-resolve 2/package.json"                                                         
 [491] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-resolve-dependencies/package.json"                                              
 [492] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-resolve/package.json"                                                           
 [493] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-runner/package.json"                                                            
 [494] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-runtime/package.json"                                                           
 [495] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-snapshot 2/node_modules/semver/package.json"                                    
 [496] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-snapshot 2/package.json"                                                        
 [497] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-snapshot/package.json"                                                          
 [498] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-util 2/node_modules/picomatch/package.json"                                     
 [499] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-util 2/package.json"                                                            
 [500] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-util/node_modules/picomatch/package.json"                                       
 [501] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-util/package.json"                                                              
 [502] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-validate 2/node_modules/camelcase/package.json"                                 
 [503] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-validate 2/package.json"                                                        
 [504] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-validate/node_modules/camelcase/package.json"                                   
 [505] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-validate/package.json"                                                          
 [506] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-watcher/package.json"                                                           
 [507] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-worker 2/node_modules/supports-color/package.json"                              
 [508] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-worker 2/package.json"                                                          
 [509] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-worker/node_modules/supports-color/package.json"                                
 [510] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest-worker/package.json"                                                            
 [511] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jest/package.json"                                                                   
 [512] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/js-tokens/package.json"                                                              
 [513] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/js-yaml/package.json"                                                                
 [514] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/jsesc/package.json"                                                                  
 [515] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/json-parse-even-better-errors/package.json"                                          
 [516] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/json5/package.json"                                                                  
 [517] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/kareem/package.json"                                                                 
 [518] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/leven/package.json"                                                                  
 [519] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lines-and-columns/package.json"                                                      
 [520] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/locate-path 2/package.json"                                                          
 [521] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/locate-path/package.json"                                                            
 [522] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lodash 2.defaults/package.json"                                                      
 [523] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lodash 2.isarguments/package.json"                                                   
 [524] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lodash.defaults/package.json"                                                        
 [525] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lodash.isarguments/package.json"                                                     
 [526] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/lru-cache/package.json"                                                              
 [527] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/luxon/package.json"                                                                  
 [528] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/luxon/src/package.json"                                                              
 [529] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/make-dir 2/node_modules/semver/package.json"                                         
 [530] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/make-dir 2/package.json"                                                             
 [531] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/make-dir/package.json"                                                               
 [532] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/makeerror/package.json"                                                              
 [533] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/math-intrinsics 2/package.json"                                                      
 [534] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/math-intrinsics 2/tsconfig.json"                                                     
 [535] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/math-intrinsics/package.json"                                                        
 [536] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/math-intrinsics/tsconfig.json"                                                       
 [537] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/media-typer 2/package.json"                                                          
 [538] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/media-typer/package.json"                                                            
 [539] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/memory-pager/package.json"                                                           
 [540] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/merge-descriptors 2/package.json"                                                    
 [541] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/merge-descriptors/package.json"                                                      
 [542] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/merge-stream/package.json"                                                           
 [543] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/micromatch/package.json"                                                             
 [544] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-db 2/db.json"                                                                   
 [545] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-db 2/package.json"                                                              
 [546] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-db/db.json"                                                                     
 [547] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-db/package.json"                                                                
 [548] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-types 2/package.json"                                                           
 [549] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mime-types/package.json"                                                             
 [550] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mimic-fn/package.json"                                                               
 [551] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minimatch/dist/commonjs/package.json"                                                
 [552] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minimatch/dist/esm/package.json"                                                     
 [553] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minimatch/package.json"                                                              
 [554] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass 2/dist/commonjs/package.json"                                               
 [555] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass 2/dist/esm/package.json"                                                    
 [556] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass 2/package.json"                                                             
 [557] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass/dist/commonjs/package.json"                                                 
 [558] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass/dist/esm/package.json"                                                      
 [559] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/minipass/package.json"                                                               
 [560] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongodb 2/package.json"                                                              
 [561] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongodb 2/tsconfig.json"                                                             
 [562] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongodb-connection-string-url/package.json"                                          
 [563] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongodb/package.json"                                                                
 [564] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongodb/tsconfig.json"                                                               
 [565] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mongoose/package.json"                                                               
 [566] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mpath 2/package.json"                                                                
 [567] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mpath/package.json"                                                                  
 [568] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mquery 2/package.json"                                                               
 [569] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/mquery/package.json"                                                                 
 [570] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ms 2/package.json"                                                                   
 [571] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/ms/package.json"                                                                     
 [572] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/msgpackr-extract/package.json"                                                       
 [573] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/msgpackr/package.json"                                                               
 [574] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/napi-postinstall/package.json"                                                       
 [575] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/natural-compare/package.json"                                                        
 [576] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/negotiator 2/package.json"                                                           
 [577] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/negotiator/package.json"                                                             
 [578] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-abort-controller/package.json"                                                  
 [579] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-gyp-build-optional-packages/package.json"                                       
 [580] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-int64/package.json"                                                             
 [581] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases 2/data/processed/envs.json"                                            
 [582] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases 2/data/release-schedule/release-schedule.json"                         
 [583] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases 2/package.json"                                                        
 [584] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases/data/processed/envs.json"                                              
 [585] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases/data/release-schedule/release-schedule.json"                           
 [586] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/node-releases/package.json"                                                          
 [587] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/normalize-path/package.json"                                                         
 [588] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/npm-run-path 2/package.json"                                                         
 [589] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/npm-run-path/package.json"                                                           
 [590] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-assign 2/package.json"                                                        
 [591] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-assign/package.json"                                                          
 [592] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-inspect 2/package-support.json"                                               
 [593] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-inspect 2/package.json"                                                       
 [594] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-inspect/package-support.json"                                                 
 [595] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/object-inspect/package.json"                                                         
 [596] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/on-finished 2/package.json"                                                          
 [597] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/on-finished/package.json"                                                            
 [598] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/once/package.json"                                                                   
 [599] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/onetime 2/package.json"                                                              
 [600] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/onetime/package.json"                                                                
 [601] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/p-limit 2/package.json"                                                              
 [602] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/p-limit/package.json"                                                                
 [603] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/p-locate/node_modules/p-limit/package.json"                                          
 [604] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/p-locate/package.json"                                                               
 [605] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/p-try/package.json"                                                                  
 [606] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/package-json-from-dist/dist/commonjs/package.json"                                   
 [607] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/package-json-from-dist/dist/esm/package.json"                                        
 [608] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/package-json-from-dist/package.json"                                                 
 [609] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/parse-json/package.json"                                                             
 [610] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/parseurl 2/package.json"                                                             
 [611] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/parseurl/package.json"                                                               
 [612] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-exists 2/package.json"                                                          
 [613] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-exists/package.json"                                                            
 [614] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-is-absolute/package.json"                                                       
 [615] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-key/package.json"                                                               
 [616] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/dist/commonjs/package.json"                                            
 [617] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/dist/esm/package.json"                                                 
 [618] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/node_modules/lru-cache/dist/commonjs/package.json"                     
 [619] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/node_modules/lru-cache/dist/esm/package.json"                          
 [620] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/node_modules/lru-cache/package.json"                                   
 [621] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry 2/package.json"                                                          
 [622] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/dist/commonjs/package.json"                                              
 [623] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/dist/esm/package.json"                                                   
 [624] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/node_modules/lru-cache/dist/commonjs/package.json"                       
 [625] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/node_modules/lru-cache/dist/esm/package.json"                            
 [626] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/node_modules/lru-cache/package.json"                                     
 [627] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-scurry/package.json"                                                            
 [628] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-to-regexp 2/package.json"                                                       
 [629] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/path-to-regexp/package.json"                                                         
 [630] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/picocolors/package.json"                                                             
 [631] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/picomatch/package.json"                                                              
 [632] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pirates/package.json"                                                                
 [633] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pkg-dir/package.json"                                                                
 [634] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pretty-format 2/node_modules/ansi-styles/package.json"                               
 [635] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pretty-format 2/package.json"                                                        
 [636] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pretty-format/node_modules/ansi-styles/package.json"                                 
 [637] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pretty-format/package.json"                                                          
 [638] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/proxy-addr 2/package.json"                                                           
 [639] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/proxy-addr/package.json"                                                             
 [640] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/punycode/package.json"                                                               
 [641] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pure-rand/lib/esm/package.json"                                                      
 [642] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/pure-rand/package.json"                                                              
 [643] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/qs 2/package.json"                                                                   
 [644] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/qs/package.json"                                                                     
 [645] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/range-parser 2/package.json"                                                         
 [646] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/range-parser/package.json"                                                           
 [647] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/raw-body 2/package.json"                                                             
 [648] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/raw-body/package.json"                                                               
 [649] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/react-is/package.json"                                                               
 [650] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/redis-errors 2/package.json"                                                         
 [651] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/redis-errors/package.json"                                                           
 [652] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/redis-parser 2/package.json"                                                         
 [653] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/redis-parser/package.json"                                                           
 [654] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/require-directory/package.json"                                                      
 [655] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/resolve-cwd 2/package.json"                                                          
 [656] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/resolve-cwd/package.json"                                                            
 [657] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/resolve-from/package.json"                                                           
 [658] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/router 2/package.json"                                                               
 [659] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/router/package.json"                                                                 
 [660] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/safe-buffer 2/package.json"                                                          
 [661] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/safe-buffer/package.json"                                                            
 [662] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/safer-buffer 2/package.json"                                                         
 [663] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/safer-buffer/package.json"                                                           
 [664] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/semver/package.json"                                                                 
 [665] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/send 2/package.json"                                                                 
 [666] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/send/package.json"                                                                   
 [667] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/serve-static 2/package.json"                                                         
 [668] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/serve-static/package.json"                                                           
 [669] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/setprototypeof 2/package.json"                                                       
 [670] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/setprototypeof/package.json"                                                         
 [671] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/shebang-command 2/package.json"                                                      
 [672] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/shebang-command/package.json"                                                        
 [673] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/shebang-regex/package.json"                                                          
 [674] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel 2/package.json"                                                         
 [675] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel 2/tsconfig.json"                                                        
 [676] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-list 2/package.json"                                                    
 [677] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-list 2/tsconfig.json"                                                   
 [678] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-list/package.json"                                                      
 [679] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-list/tsconfig.json"                                                     
 [680] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-map 2/package.json"                                                     
 [681] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-map 2/tsconfig.json"                                                    
 [682] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-map/package.json"                                                       
 [683] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-map/tsconfig.json"                                                      
 [684] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-weakmap 2/package.json"                                                 
 [685] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-weakmap 2/tsconfig.json"                                                
 [686] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-weakmap/package.json"                                                   
 [687] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel-weakmap/tsconfig.json"                                                  
 [688] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel/package.json"                                                           
 [689] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/side-channel/tsconfig.json"                                                          
 [690] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/sift 2/package.json"                                                                 
 [691] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/sift/package.json"                                                                   
 [692] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/signal-exit/dist/cjs/package.json"                                                   
 [693] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/signal-exit/dist/mjs/package.json"                                                   
 [694] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/signal-exit/package.json"                                                            
 [695] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/slash/package.json"                                                                  
 [696] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/source-map-support/package.json"                                                     
 [697] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/source-map/package.json"                                                             
 [698] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/sparse-bitfield/package.json"                                                        
 [699] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/sprintf-js/bower.json"                                                               
 [700] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/sprintf-js/package.json"                                                             
 [701] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/stack-utils/package.json"                                                            
 [702] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/standard-as-callback 2/package.json"                                                 
 [703] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/standard-as-callback/package.json"                                                   
 [704] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/statuses 2/codes.json"                                                               
 [705] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/statuses 2/package.json"                                                             
 [706] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/statuses/codes.json"                                                                 
 [707] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/statuses/package.json"                                                               
 [708] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-length/node_modules/ansi-regex/package.json"                                  
 [709] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-length/node_modules/strip-ansi/package.json"                                  
 [710] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-length/package.json"                                                          
 [711] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs 2/node_modules/ansi-regex/package.json"                             
 [712] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs 2/node_modules/emoji-regex/package.json"                            
 [713] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs 2/node_modules/strip-ansi/package.json"                             
 [714] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs 2/package.json"                                                     
 [715] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs/node_modules/ansi-regex/package.json"                               
 [716] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs/node_modules/emoji-regex/package.json"                              
 [717] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs/node_modules/strip-ansi/package.json"                               
 [718] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width-cjs/package.json"                                                       
 [719] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/string-width/package.json"                                                           
 [720] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi 2/package.json"                                                           
 [721] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi-cjs 2/node_modules/ansi-regex/package.json"                               
 [722] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi-cjs 2/package.json"                                                       
 [723] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi-cjs/node_modules/ansi-regex/package.json"                                 
 [724] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi-cjs/package.json"                                                         
 [725] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-ansi/package.json"                                                             
 [726] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-bom/package.json"                                                              
 [727] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-final-newline 2/package.json"                                                  
 [728] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-final-newline/package.json"                                                    
 [729] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/strip-json-comments/package.json"                                                    
 [730] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/supports-color/package.json"                                                         
 [731] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/synckit/package.json"                                                                
 [732] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude 2/node_modules/brace-expansion/package.json"                            
 [733] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude 2/node_modules/glob/package.json"                                       
 [734] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude 2/node_modules/minimatch/package.json"                                  
 [735] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude 2/package.json"                                                         
 [736] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude/node_modules/brace-expansion/package.json"                              
 [737] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude/node_modules/glob/package.json"                                         
 [738] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude/node_modules/minimatch/package.json"                                    
 [739] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/test-exclude/package.json"                                                           
 [740] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/tmpl/package.json"                                                                   
 [741] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/to-regex-range/package.json"                                                         
 [742] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/toidentifier 2/package.json"                                                         
 [743] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/toidentifier/package.json"                                                           
 [744] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/tr46/lib/mappingTable.json"                                                          
 [745] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/tr46/package.json"                                                                   
 [746] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/tslib/modules/package.json"                                                          
 [747] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/tslib/package.json"                                                                  
 [748] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/type-detect/package.json"                                                            
 [749] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/type-fest/package.json"                                                              
 [750] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/type-is 2/package.json"                                                              
 [751] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/type-is/package.json"                                                                
 [752] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/undici-types/package.json"                                                           
 [753] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/unpipe 2/package.json"                                                               
 [754] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/unpipe/package.json"                                                                 
 [755] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/unrs-resolver/package.json"                                                          
 [756] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/update-browserslist-db/package.json"                                                 
 [757] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/uuid/package.json"                                                                   
 [758] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/v8-to-istanbul 2/package.json"                                                       
 [759] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/v8-to-istanbul/package.json"                                                         
 [760] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/vary 2/package.json"                                                                 
 [761] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/vary/package.json"                                                                   
 [762] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/walker/package.json"                                                                 
 [763] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/webidl-conversions/package.json"                                                     
 [764] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/whatwg-url/package.json"                                                             
 [765] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/which/package.json"                                                                  
 [766] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi 2/node_modules/ansi-styles/package.json"                                   
 [767] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi 2/package.json"                                                            
 [768] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi-cjs/node_modules/ansi-regex/package.json"                                  
 [769] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi-cjs/node_modules/emoji-regex/package.json"                                 
 [770] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi-cjs/node_modules/string-width/package.json"                                
 [771] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi-cjs/node_modules/strip-ansi/package.json"                                  
 [772] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi-cjs/package.json"                                                          
 [773] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi/node_modules/ansi-styles/package.json"                                     
 [774] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrap-ansi/package.json"                                                              
 [775] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/wrappy/package.json"                                                                 
 [776] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/write-file-atomic 2/package.json"                                                    
 [777] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/write-file-atomic/package.json"                                                      
 [778] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/y18n/package.json"                                                                   
 [779] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yallist/package.json"                                                                
 [780] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/helpers/package.json"                                                        
 [781] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/be.json"                                                             
 [782] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/cs.json"                                                             
 [783] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/de.json"                                                             
 [784] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/en.json"                                                             
 [785] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/es.json"                                                             
 [786] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/fi.json"                                                             
 [787] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/fr.json"                                                             
 [788] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/hi.json"                                                             
 [789] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/hu.json"                                                             
 [790] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/id.json"                                                             
 [791] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/it.json"                                                             
 [792] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/ja.json"                                                             
 [793] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/ko.json"                                                             
 [794] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/nb.json"                                                             
 [795] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/nl.json"                                                             
 [796] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/nn.json"                                                             
 [797] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/pirate.json"                                                         
 [798] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/pl.json"                                                             
 [799] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/pt_BR.json"                                                          
 [800] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/pt.json"                                                             
 [801] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/ru.json"                                                             
 [802] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/th.json"                                                             
 [803] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/tr.json"                                                             
 [804] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/uk_UA.json"                                                          
 [805] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/uz.json"                                                             
 [806] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/zh_CN.json"                                                          
 [807] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/locales/zh_TW.json"                                                          
 [808] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/node_modules/ansi-regex/package.json"                                        
 [809] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/node_modules/emoji-regex/package.json"                                       
 [810] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/node_modules/string-width/package.json"                                      
 [811] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/node_modules/strip-ansi/package.json"                                        
 [812] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs 2/package.json"                                                                
 [813] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs-parser/package.json"                                                           
 [814] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/helpers/package.json"                                                          
 [815] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/be.json"                                                               
 [816] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/cs.json"                                                               
 [817] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/de.json"                                                               
 [818] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/en.json"                                                               
 [819] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/es.json"                                                               
 [820] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/fi.json"                                                               
 [821] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/fr.json"                                                               
 [822] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/hi.json"                                                               
 [823] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/hu.json"                                                               
 [824] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/id.json"                                                               
 [825] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/it.json"                                                               
 [826] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/ja.json"                                                               
 [827] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/ko.json"                                                               
 [828] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/nb.json"                                                               
 [829] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/nl.json"                                                               
 [830] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/nn.json"                                                               
 [831] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/pirate.json"                                                           
 [832] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/pl.json"                                                               
 [833] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/pt_BR.json"                                                            
 [834] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/pt.json"                                                               
 [835] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/ru.json"                                                               
 [836] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/th.json"                                                               
 [837] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/tr.json"                                                               
 [838] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/uk_UA.json"                                                            
 [839] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/uz.json"                                                               
 [840] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/zh_CN.json"                                                            
 [841] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/locales/zh_TW.json"                                                            
 [842] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/node_modules/ansi-regex/package.json"                                          
 [843] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/node_modules/emoji-regex/package.json"                                         
 [844] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/node_modules/string-width/package.json"                                        
 [845] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/node_modules/strip-ansi/package.json"                                          
 [846] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yargs/package.json"                                                                  
 [847] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/node_modules/yocto-queue/package.json"                                                            
 [848] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/package-lock.json"                                                                                
 [849] "/Users/shekhargoud/Downloads/all/historical-price-oracle/backend/package.json"                                                                                     
 [850] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@babel/runtime/helpers/esm/package.json"                                                     
 [851] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@babel/runtime/package.json"                                                                 
 [852] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/abi/package.json"                                                             
 [853] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/abstract-provider/package.json"                                               
 [854] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/abstract-signer/package.json"                                                 
 [855] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/address/package.json"                                                         
 [856] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/base64/package.json"                                                          
 [857] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/basex/package.json"                                                           
 [858] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/bignumber/package.json"                                                       
 [859] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/bytes/package.json"                                                           
 [860] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/constants/package.json"                                                       
 [861] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/contracts/package.json"                                                       
 [862] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/hash/package.json"                                                            
 [863] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/hdnode/package.json"                                                          
 [864] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/json-wallets/package.json"                                                    
 [865] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/keccak256/package.json"                                                       
 [866] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/logger/package.json"                                                          
 [867] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/networks/package.json"                                                        
 [868] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/pbkdf2/package.json"                                                          
 [869] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/properties/package.json"                                                      
 [870] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/providers/package.json"                                                       
 [871] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/random/package.json"                                                          
 [872] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/rlp/package.json"                                                             
 [873] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/sha2/package.json"                                                            
 [874] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/signing-key/package.json"                                                     
 [875] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/strings/package.json"                                                         
 [876] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/transactions/package.json"                                                    
 [877] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/units/package.json"                                                           
 [878] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/wallet/package.json"                                                          
 [879] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/web/package.json"                                                             
 [880] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ethersproject/wordlists/package.json"                                                       
 [881] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ioredis/commands/built/commands.json"                                                       
 [882] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@ioredis/commands/package.json"                                                              
 [883] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@noble/curves/esm/package.json"                                                              
 [884] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@noble/curves/package.json"                                                                  
 [885] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@noble/curves/src/package.json"                                                              
 [886] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@noble/hashes/esm/package.json"                                                              
 [887] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@noble/hashes/package.json"                                                                  
 [888] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/bloom/package.json"                                                                   
 [889] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/client/dist/package.json"                                                             
 [890] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/client/package.json"                                                                  
 [891] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/graph/package.json"                                                                   
 [892] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/json/package.json"                                                                    
 [893] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/search/package.json"                                                                  
 [894] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@redis/time-series/package.json"                                                             
 [895] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@solana/buffer-layout/package.json"                                                          
 [896] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@solana/codecs-core/package.json"                                                            
 [897] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@solana/codecs-numbers/package.json"                                                         
 [898] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@solana/errors/package.json"                                                                 
 [899] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@solana/web3.js/package.json"                                                                
 [900] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_apply_decorated_descriptor/package.json"                                     
 [901] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_apply_decs_2203_r/package.json"                                              
 [902] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_array_like_to_array/package.json"                                            
 [903] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_array_with_holes/package.json"                                               
 [904] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_array_without_holes/package.json"                                            
 [905] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_assert_this_initialized/package.json"                                        
 [906] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_async_generator_delegate/package.json"                                       
 [907] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_async_generator/package.json"                                                
 [908] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_async_iterator/package.json"                                                 
 [909] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_async_to_generator/package.json"                                             
 [910] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_await_async_generator/package.json"                                          
 [911] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_await_value/package.json"                                                    
 [912] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_call_super/package.json"                                                     
 [913] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_check_private_redeclaration/package.json"                                    
 [914] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_apply_descriptor_destructure/package.json"                             
 [915] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_apply_descriptor_get/package.json"                                     
 [916] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_apply_descriptor_set/package.json"                                     
 [917] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_apply_descriptor_update/package.json"                                  
 [918] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_call_check/package.json"                                               
 [919] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_check_private_static_access/package.json"                              
 [920] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_check_private_static_field_descriptor/package.json"                    
 [921] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_extract_field_descriptor/package.json"                                 
 [922] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_name_tdz_error/package.json"                                           
 [923] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_destructure/package.json"                                
 [924] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_get/package.json"                                        
 [925] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_init/package.json"                                       
 [926] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_loose_base/package.json"                                 
 [927] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_loose_key/package.json"                                  
 [928] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_set/package.json"                                        
 [929] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_field_update/package.json"                                     
 [930] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_method_get/package.json"                                       
 [931] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_method_init/package.json"                                      
 [932] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_private_method_set/package.json"                                       
 [933] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_static_private_field_destructure/package.json"                         
 [934] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_static_private_field_spec_get/package.json"                            
 [935] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_static_private_field_spec_set/package.json"                            
 [936] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_static_private_field_update/package.json"                              
 [937] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_class_static_private_method_get/package.json"                                
 [938] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_construct/package.json"                                                      
 [939] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_create_class/package.json"                                                   
 [940] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_create_for_of_iterator_helper_loose/package.json"                            
 [941] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_create_super/package.json"                                                   
 [942] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_decorate/package.json"                                                       
 [943] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_defaults/package.json"                                                       
 [944] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_define_enumerable_properties/package.json"                                   
 [945] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_define_property/package.json"                                                
 [946] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_dispose/package.json"                                                        
 [947] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_export_star/package.json"                                                    
 [948] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_extends/package.json"                                                        
 [949] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_get_prototype_of/package.json"                                               
 [950] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_get/package.json"                                                            
 [951] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_identity/package.json"                                                       
 [952] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_inherits_loose/package.json"                                                 
 [953] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_inherits/package.json"                                                       
 [954] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_initializer_define_property/package.json"                                    
 [955] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_initializer_warning_helper/package.json"                                     
 [956] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_instanceof/package.json"                                                     
 [957] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_interop_require_default/package.json"                                        
 [958] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_interop_require_wildcard/package.json"                                       
 [959] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_is_native_function/package.json"                                             
 [960] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_is_native_reflect_construct/package.json"                                    
 [961] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_iterable_to_array_limit_loose/package.json"                                  
 [962] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_iterable_to_array_limit/package.json"                                        
 [963] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_iterable_to_array/package.json"                                              
 [964] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_jsx/package.json"                                                            
 [965] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_new_arrow_check/package.json"                                                
 [966] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_non_iterable_rest/package.json"                                              
 [967] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_non_iterable_spread/package.json"                                            
 [968] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_object_destructuring_empty/package.json"                                     
 [969] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_object_spread_props/package.json"                                            
 [970] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_object_spread/package.json"                                                  
 [971] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_object_without_properties_loose/package.json"                                
 [972] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_object_without_properties/package.json"                                      
 [973] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_overload_yield/package.json"                                                 
 [974] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_possible_constructor_return/package.json"                                    
 [975] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_read_only_error/package.json"                                                
 [976] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_set_prototype_of/package.json"                                               
 [977] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_set/package.json"                                                            
 [978] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_skip_first_generator_next/package.json"                                      
 [979] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_sliced_to_array_loose/package.json"                                          
 [980] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_sliced_to_array/package.json"                                                
 [981] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_super_prop_base/package.json"                                                
 [982] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_tagged_template_literal_loose/package.json"                                  
 [983] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_tagged_template_literal/package.json"                                        
 [984] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_throw/package.json"                                                          
 [985] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_to_array/package.json"                                                       
 [986] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_to_consumable_array/package.json"                                            
 [987] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_to_primitive/package.json"                                                   
 [988] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_to_property_key/package.json"                                                
 [989] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_add_disposable_resource/package.json"                                     
 [990] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_decorate/package.json"                                                    
 [991] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_dispose_resources/package.json"                                           
 [992] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_generator/package.json"                                                   
 [993] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_metadata/package.json"                                                    
 [994] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_param/package.json"                                                       
 [995] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_ts_values/package.json"                                                      
 [996] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_type_of/package.json"                                                        
 [997] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_unsupported_iterable_to_array/package.json"                                  
 [998] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_update/package.json"                                                         
 [999] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_using_ctx/package.json"                                                      
[1000] "/Users/shekhargoud/Downloads/all/historical-price-oracle/node_modules/@swc/helpers/_/_using/package.json"                                                          
 [ reached 'max' / getOption("max.print") -- omitted 1173918 entries ]
> setwd("/Users/shekhargoud/Desktop/LA_Reflect_Analysis")
> json_files <- list.files(
+     "data/extracted",
+     pattern = "\\.json$",
+     recursive = TRUE,
+     full.names = TRUE
+ )
> 
> length(json_files)
[1] 36
> setwd("/Users/shekhargoud/Desktop/LA_Reflect_Analysis")
> length(json_files)
[1] 36
> [1] 36
Error: unexpected '[' in "["

> nrow(gaze_clean)
[1] 0
> nrow(gaze_clean[gaze_clean$screen_id == screen_s2, ])
Error: object 'screen_s2' not found

> setwd("/Users/shekhargoud/Desktop/LA_Reflect_Analysis")
> ############################################################
> # FIX GAZE DATA + CREATE VISIBLE HEATMAPS
> ############################################################
> 
> library(dplyr)
> library(ggplot2)
> library(jsonlite)
> 
> # 1. Correct project directory
> setwd("/Users/shekhargoud/Desktop/LA_Reflect_Analysis")
> 
> # 2. Find JSON files
> json_files <- list.files(
+     "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted",
+     pattern = "\\.json$",
+     recursive = TRUE,
+     full.names = TRUE
+ )
> 
> cat("JSON files found:", length(json_files), "\n")
JSON files found: 36 
> 
> # MUST BE 36
> stopifnot(length(json_files) == 36)
> 
> 
> ############################################################
> # 3. JSON EXTRACTOR
> ############################################################
> 
> extract_gaze_json <- function(file, dataset_number) {
+     
+     x <- jsonlite::fromJSON(
+         file,
+         simplifyVector = FALSE
+     )
+     
+     if (
+         is.null(x$screens) ||
+         length(x$screens) == 0
+     ) {
+         return(NULL)
+     }
+     
+     all_rows <- list()
+     row_index <- 1
+     
+     for (screen in x$screens) {
+         
+         if (
+             is.null(screen$gazeData) ||
+             length(screen$gazeData) == 0
+         ) {
+             next
+         }
+         
+         for (g in screen$gazeData) {
+             
+             if (
+                 is.null(g$timestamp) ||
+                 is.null(g$x) ||
+                 is.null(g$y)
+             ) {
+                 next
+             }
+             
+             all_rows[[row_index]] <- data.frame(
+                 
+                 user_id = as.character(x$userId),
+                 
+                 activity_id =
+                     as.character(x$activityId),
+                 
+                 task_id =
+                     as.character(x$taskId),
+                 
+                 screen_id =
+                     as.character(screen$screenId),
+                 
+                 screen_timestamp =
+                     as.character(screen$timestamp),
+                 
+                 gaze_timestamp =
+                     as.character(g$timestamp),
+                 
+                 gaze_x =
+                     as.numeric(g$x),
+                 
+                 gaze_y =
+                     as.numeric(g$y),
+                 
+                 panelTitle =
+                     if (
+                         is.null(g$panelTitle)
+                     ) {
+                         NA_character_
+                     } else {
+                         as.character(g$panelTitle)
+                     },
+                 
+                 elementId =
+                     if (
+                         is.null(g$elementId)
+                     ) {
+                         NA_character_
+                     } else {
+                         as.character(g$elementId)
+                     },
+                 
+                 image_file =
+                     if (
+                         is.null(screen$imageFile)
+                     ) {
+                         NA_character_
+                     } else {
+                         as.character(screen$imageFile)
+                     },
+                 
+                 dataset_number =
+                     dataset_number,
+                 
+                 stringsAsFactors = FALSE
+             )
+             
+             row_index <- row_index + 1
+         }
+     }
+     
+     if (length(all_rows) == 0) {
+         return(NULL)
+     }
+     
+     do.call(
+         rbind,
+         all_rows
+     )
+ }
> 
> 
> ############################################################
> # 4. PROCESS ALL 36 FILES
> ############################################################
> 
> gaze_list <- vector(
+     "list",
+     length(json_files)
+ )
> 
> for (i in seq_along(json_files)) {
+     
+     cat(
+         "Processing",
+         i,
+         "of",
+         length(json_files),
+         "\n"
+     )
+     
+     gaze_list[[i]] <- tryCatch(
+         
+         extract_gaze_json(
+             json_files[i],
+             i
+         ),
+         
+         error = function(e) {
+             
+             cat(
+                 "ERROR:",
+                 e$message,
+                 "\n"
+             )
+             
+             NULL
+         }
+     )
+ }
Processing 1 of 36 
Processing 2 of 36 
Processing 3 of 36 
Processing 4 of 36 
Processing 5 of 36 
Processing 6 of 36 
Processing 7 of 36 
Processing 8 of 36 
Processing 9 of 36 
Processing 10 of 36 
Processing 11 of 36 
Processing 12 of 36 
Processing 13 of 36 
Processing 14 of 36 
Processing 15 of 36 
Processing 16 of 36 
Processing 17 of 36 
Processing 18 of 36 
Processing 19 of 36 
Processing 20 of 36 
Processing 21 of 36 
Processing 22 of 36 
Processing 23 of 36 
Processing 24 of 36 
Processing 25 of 36 
Processing 26 of 36 
Processing 27 of 36 
Processing 28 of 36 
Processing 29 of 36 
Processing 30 of 36 
Processing 31 of 36 
Processing 32 of 36 
Processing 33 of 36 
Processing 34 of 36 
Processing 35 of 36 
Processing 36 of 36 
> 
> 
> # Remove empty files
> gaze_list <- gaze_list[
+     !sapply(
+         gaze_list,
+         is.null
+     )
+ ]
> 
> 
> ############################################################
> # 5. COMBINE
> ############################################################
> 
> gaze_labeled <- do.call(
+     rbind,
+     gaze_list
+ )
> 
> gaze_labeled <- as.data.frame(
+     gaze_labeled,
+     stringsAsFactors = FALSE
+ )
> 
> 
> ############################################################
> # 6. CHECK
> ############################################################
> 
> cat("\n============================\n")

============================
> cat("GAZE DATA CHECK\n")
GAZE DATA CHECK
> cat("============================\n")
============================
> 
> cat(
+     "Rows:",
+     nrow(gaze_labeled),
+     "\n"
+ )
Rows: 220657 
> 
> cat(
+     "Columns:",
+     ncol(gaze_labeled),
+     "\n"
+ )
Columns: 12 
> 
> cat(
+     "Learners:",
+     length(
+         unique(
+             gaze_labeled$user_id
+         )
+     ),
+     "\n"
+ )
Learners: 35 
> 
> cat(
+     "Screens:",
+     length(
+         unique(
+             gaze_labeled$screen_id
+         )
+     ),
+     "\n"
+ )
Screens: 1221 
> 
> print(
+     head(gaze_labeled)
+ )
                   user_id              activity_id                  task_id
1 69142eb4410888a7b66fa988 68e48f1a803e577b1177152e 6912a59f410888a7b66ed6cf
2 69142eb4410888a7b66fa988 68e48f1a803e577b1177152e 6912a59f410888a7b66ed6cf
3 69142eb4410888a7b66fa988 68e48f1a803e577b1177152e 6912a59f410888a7b66ed6cf
4 69142eb4410888a7b66fa988 68e48f1a803e577b1177152e 6912a59f410888a7b66ed6cf
5 69142eb4410888a7b66fa988 68e48f1a803e577b1177152e 6912a59f410888a7b66ed6cf
6 69142eb4410888a7b66fa988 68e48f1a803e577b1177152e 6912a59f410888a7b66ed6cf
                                        screen_id screen_timestamp           gaze_timestamp
1 screenshot-71437d02-b2ae-4afe-98a9-427853ba51c5                  2025-11-12T07:09:30.679Z
2 screenshot-71437d02-b2ae-4afe-98a9-427853ba51c5                  2025-11-12T07:09:30.797Z
3 screenshot-71437d02-b2ae-4afe-98a9-427853ba51c5                  2025-11-12T07:09:30.894Z
4 screenshot-71437d02-b2ae-4afe-98a9-427853ba51c5                  2025-11-12T07:09:30.997Z
5 screenshot-71437d02-b2ae-4afe-98a9-427853ba51c5                  2025-11-12T07:09:31.092Z
6 screenshot-71437d02-b2ae-4afe-98a9-427853ba51c5                  2025-11-12T07:09:31.196Z
    gaze_x   gaze_y                                        panelTitle
1 551.3198 156.3389 1🟦 [Introduction: the robot 'Robbie' and Gloria]
2 526.4485 144.8125 1🟦 [Introduction: the robot 'Robbie' and Gloria]
3 493.1765 161.0868 1🟦 [Introduction: the robot 'Robbie' and Gloria]
4 474.5963 154.8627 1🟦 [Introduction: the robot 'Robbie' and Gloria]
5 475.2039 144.1659 1🟦 [Introduction: the robot 'Robbie' and Gloria]
6 479.1022 140.3308 1🟦 [Introduction: the robot 'Robbie' and Gloria]
                             elementId                    image_file dataset_number
1 73c35eb1-f2fd-4f91-a624-d88399209e61 screenshots/screen_000001.png              1
2 73c35eb1-f2fd-4f91-a624-d88399209e61 screenshots/screen_000001.png              1
3 73c35eb1-f2fd-4f91-a624-d88399209e61 screenshots/screen_000001.png              1
4 73c35eb1-f2fd-4f91-a624-d88399209e61 screenshots/screen_000001.png              1
5 73c35eb1-f2fd-4f91-a624-d88399209e61 screenshots/screen_000001.png              1
6 73c35eb1-f2fd-4f91-a624-d88399209e61 screenshots/screen_000001.png              1
> 
> 
> ############################################################
> # 7. STOP IF DATA IS EMPTY
> ############################################################
> 
> if (nrow(gaze_labeled) == 0) {
+     stop(
+         "GAZE DATA IS EMPTY. Do not continue."
+     )
+ }
> 
> 
> ############################################################
> # 8. CLASSIFY CONTENT
> ############################################################
> 
> gaze_labeled$content_type <- "Other"
> 
> 
> # English story
> gaze_labeled$content_type[
+     grepl(
+         "Introduction|mother's anxieties|Grief after|museum|Reunion|Dialogue|Ending",
+         gaze_labeled$panelTitle,
+         ignore.case = TRUE
+     )
+ ] <- "English Story"
> 
> 
> # Japanese story
> gaze_labeled$content_type[
+     grepl(
+         "導入部|母親の不安|喪失|博物館|再会|対話|結末",
+         gaze_labeled$panelTitle,
+         ignore.case = TRUE
+     )
+ ] <- "Japanese Story"
> 
> 
> # Questions
> gaze_labeled$content_type[
+     grepl(
+         "^Q[1-4]",
+         gaze_labeled$panelTitle
+     )
+ ] <- "Question"
> 
> 
> ############################################################
> # 9. SECTION NUMBER
> ############################################################
> 
> gaze_labeled$section <- NA_character_
> 
> for (s in 1:7) {
+     
+     gaze_labeled$section[
+         grepl(
+             paste0("^", s),
+             gaze_labeled$panelTitle
+         )
+     ] <- paste(
+         "Section",
+         s
+     )
+ }
> 
> 
> ############################################################
> # 10. TIMESTAMPS
> ############################################################
> 
> gaze_clean <- gaze_labeled
> 
> gaze_clean$gaze_time <- as.POSIXct(
+     gaze_clean$gaze_timestamp,
+     format = "%Y-%m-%dT%H:%M:%OSZ",
+     tz = "UTC"
+ )
> 
> 
> ############################################################
> # 11. SCREEN-PRESERVING DWELL
> ############################################################
> 
> gaze_clean <- gaze_clean %>%
+     arrange(
+         user_id,
+         screen_id,
+         gaze_time
+     )
> 
> 
> gaze_clean <- gaze_clean %>%
+     group_by(
+         user_id,
+         screen_id
+     ) %>%
+     mutate(
+         interval_seconds =
+             as.numeric(
+                 lead(gaze_time) -
+                     gaze_time
+             )
+     ) %>%
+     ungroup()
> 
> 
> gaze_clean$interval_seconds <-
+     pmin(
+         gaze_clean$interval_seconds,
+         5
+     )
> 
> gaze_clean$interval_seconds[
+     is.na(
+         gaze_clean$interval_seconds
+     )
+ ] <- 0
> 
> 
> ############################################################
> # 12. STORY GAZE
> ############################################################
> 
> story_gaze_clean <- gaze_clean %>%
+     filter(
+         content_type %in%
+             c(
+                 "English Story",
+                 "Japanese Story"
+             )
+     )
> 
> 
> ############################################################
> # 13. SECTION DWELL
> ############################################################
> 
> student_section_dwell_clean <-
+     story_gaze_clean %>%
+     
+     group_by(
+         user_id,
+         section,
+         content_type
+     ) %>%
+     
+     summarise(
+         
+         dwell_seconds =
+             sum(
+                 interval_seconds,
+                 na.rm = TRUE
+             ),
+         
+         gaze_count = n(),
+         
+         .groups = "drop"
+     )
> 
> 
> student_section_dwell_clean$dwell_minutes <-
+     student_section_dwell_clean$dwell_seconds /
+     60
> 
> 
> ############################################################
> # 14. FIND SECTION 2 SCREEN
> ############################################################
> 
> section2_screens <- gaze_clean %>%
+     
+     filter(
+         section == "Section 2",
+         content_type == "English Story"
+     ) %>%
+     
+     count(
+         screen_id,
+         sort = TRUE
+     )
> 
> 
> print(
+     head(
+         section2_screens,
+         10
+     )
+ )
# A tibble: 10 × 2
   screen_id                                           n
   <chr>                                           <int>
 1 screenshot-dda0ffc3-412e-4142-860a-5582b9f8228e   961
 2 screenshot-289d1916-4d41-4e12-b197-527419eac81e   438
 3 screenshot-543221f4-7394-47ec-a0b4-29b145f3339b   423
 4 screenshot-28593e2b-74f4-44bb-8196-02c04bbbbfa5   391
 5 screenshot-e93bd99d-a67c-41df-bbb5-4e3009119eca   379
 6 screenshot-95572fd8-edfd-4e6d-bf57-12a793c4f36a   372
 7 screenshot-748686b1-97d4-446d-8dc6-85e41a4c71e7   350
 8 screenshot-c7abd595-f3fd-48a9-966f-f1db8985582b   300
 9 screenshot-172cc206-a5ef-436b-b4ee-d8e808af5bd6   271
10 screenshot-423fad67-afad-4302-9cd4-3e70f7d3fc8c   248
> 
> 
> screen_s2 <-
+     section2_screens$screen_id[1]
> 
> cat(
+     "\nRepresentative Section 2 screen:",
+     screen_s2,
+     "\n"
+ )

Representative Section 2 screen: screenshot-dda0ffc3-412e-4142-860a-5582b9f8228e 
> 
> 
> ############################################################
> # 15. CHECK SCREEN
> ############################################################
> 
> screen_gaze <- gaze_clean %>%
+     
+     filter(
+         screen_id == screen_s2,
+         !is.na(gaze_x),
+         !is.na(gaze_y)
+     )
> 
> 
> cat(
+     "Gaze observations:",
+     nrow(screen_gaze),
+     "\n"
+ )
Gaze observations: 2943 
> 
> 
> ############################################################
> # 16. VISIBLE HEATMAP
> ############################################################
> 
> heatmap_s2 <-
+     ggplot(
+         screen_gaze,
+         aes(
+             x = gaze_x,
+             y = gaze_y
+         )
+     ) +
+     
+     geom_bin2d(
+         bins = 40
+     ) +
+     
+     scale_y_reverse() +
+     
+     labs(
+         title =
+             "Gaze-Density Heatmap: Section 2 English Story",
+         
+         x = "Gaze X",
+         
+         y = "Gaze Y",
+         
+         fill = "Gaze count"
+     ) +
+     
+     theme_minimal()
> 
> 
> print(heatmap_s2)
> 
> 
> ############################################################
> # 17. SAVE HEATMAP
> ############################################################
> 
> ggsave(
+     "Section2_Gaze_Heatmap.png",
+     heatmap_s2,
+     width = 8,
+     height = 6,
+     dpi = 300
+ )
> 
> 
> ############################################################
> # 18. SAVE DATA
> ############################################################
> 
> write.csv(
+     gaze_clean,
+     "gaze_clean.csv",
+     row.names = FALSE
+ )
> 
> write.csv(
+     student_section_dwell_clean,
+     "student_section_dwell.csv",
+     row.names = FALSE
+ )
> 
> 
> cat("\n========================================\n")

========================================
> cat("GAZE ANALYSIS COMPLETED\n")
GAZE ANALYSIS COMPLETED
> cat("========================================\n")
========================================
> cat(
+     "Gaze observations:",
+     nrow(gaze_labeled),
+     "\n"
+ )
Gaze observations: 220657 
> cat(
+     "Learners:",
+     length(unique(gaze_labeled$user_id)),
+     "\n"
+ )
Learners: 35 
> cat(
+     "Screens:",
+     length(unique(gaze_labeled$screen_id)),
+     "\n"
+ )
Screens: 1221 
> cat(
+     "Heatmap saved as Section2_Gaze_Heatmap.png\n"
+ )
Heatmap saved as Section2_Gaze_Heatmap.png
> "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted"
[1] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis/data/extracted"
> # ============================================================
> # ONE PAGE: ALL STORY GAZE HEATMAPS
> # ============================================================
> 
> library(ggplot2)
> library(dplyr)
> library(gridExtra)
Error in library(gridExtra) : there is no package called ‘gridExtra’

> # ============================================================
> # ALL 14 GAZE HEATMAPS ON ONE PAGE
> # NO EXTRA PACKAGE REQUIRED
> # ============================================================
> 
> library(ggplot2)
> library(dplyr)
> 
> # Story gaze only
> story_data <- gaze_clean %>%
+     filter(
+         content_type %in% c("English Story", "Japanese Story"),
+         !is.na(section),
+         !is.na(gaze_x),
+         !is.na(gaze_y)
+     )
> 
> # Save one page
> png(
+     "ALL_STORY_GAZE_HEATMAPS_ONE_PAGE.png",
+     width = 3000,
+     height = 4200,
+     res = 300
+ )
> 
> # 7 rows x 2 columns
> par(
+     mfrow = c(7, 2),
+     mar = c(1.5, 1.5, 2.5, 1),
+     oma = c(0, 0, 3, 0)
+ )
> 
> for (s in 1:7) {
+     
+     for (lang in c("English Story", "Japanese Story")) {
+         
+         d <- story_data %>%
+             filter(
+                 section == paste("Section", s),
+                 content_type == lang
+             )
+         
+         if (nrow(d) > 0) {
+             
+             # Create 2D density using hexagonal-looking rectangular bins
+             h <- hist2d <- MASS::kde2d(
+                 d$gaze_x,
+                 d$gaze_y,
+                 n = 40
+             )
+             
+             image(
+                 h$x,
+                 h$y,
+                 h$z,
+                 col = hcl.colors(60, "YlOrRd", rev = TRUE),
+                 axes = FALSE,
+                 xlab = "",
+                 ylab = ""
+             )
+             
+             title(
+                 paste0(
+                     "Section ", s, " - ",
+                     ifelse(lang == "English Story",
+                            "English", "Japanese")
+                 ),
+                 cex.main = 0.9
+             )
+             
+             box()
+             
+         } else {
+             
+             plot.new()
+             
+             title(
+                 paste0(
+                     "Section ", s, " - ",
+                     ifelse(lang == "English Story",
+                            "English", "Japanese")
+                 ),
+                 cex.main = 0.9
+             )
+             
+             text(
+                 0.5, 0.5,
+                 "No gaze data",
+                 cex = 0.8
+             )
+         }
+     }
+ }
> 
> mtext(
+     "Gaze-Density Heatmaps Across Story Sections",
+     outer = TRUE,
+     cex = 1.3,
+     font = 2
+ )
> 
> dev.off()
RStudioGD 
        2 
> 
> cat(
+     "\nDONE!\n",
+     "Saved: ALL_STORY_GAZE_HEATMAPS_ONE_PAGE.png\n"
+ )

DONE!
 Saved: ALL_STORY_GAZE_HEATMAPS_ONE_PAGE.png
> # ============================================================
> # 14 HEATMAPS - NO GRIDEXTRA / NO MASS
> # ============================================================
> 
> library(ggplot2)
> library(dplyr)
> 
> story_data <- gaze_clean %>%
+     filter(
+         content_type %in% c("English Story", "Japanese Story"),
+         !is.na(section),
+         !is.na(gaze_x),
+         !is.na(gaze_y)
+     )
> 
> plots <- list()
> 
> for (s in 1:7) {
+     
+     for (lang in c("English Story", "Japanese Story")) {
+         
+         d <- story_data %>%
+             filter(
+                 section == paste("Section", s),
+                 content_type == lang
+             )
+         
+         p <- ggplot(d, aes(gaze_x, gaze_y)) +
+             geom_bin2d(bins = 30) +
+             scale_y_reverse() +
+             labs(
+                 title = paste0(
+                     "S", s, " - ",
+                     ifelse(lang == "English Story",
+                            "English", "Japanese")
+                 ),
+                 x = NULL,
+                 y = NULL
+             ) +
+             theme_minimal(base_size = 7) +
+             theme(
+                 plot.title = element_text(
+                     size = 8,
+                     face = "bold",
+                     hjust = 0.5
+                 ),
+                 axis.text = element_blank(),
+                 axis.ticks = element_blank(),
+                 panel.grid = element_blank(),
+                 legend.position = "none",
+                 plot.margin = margin(2, 2, 2, 2)
+             )
+         
+         plots[[length(plots) + 1]] <- p
+     }
+ }
> 
> # Use base R layout
> png(
+     "ALL_STORY_GAZE_HEATMAPS_ONE_PAGE.png",
+     width = 3000,
+     height = 4200,
+     res = 300
+ )
> 
> grid::grid.newpage()
> 
> push <- grid::pushViewport
> pop <- grid::popViewport
> 
> push(
+     grid::viewport(
+         layout = grid::grid.layout(7, 2)
+     )
+ )
> 
> for (i in seq_along(plots)) {
+     
+     r <- ceiling(i / 2)
+     c <- ifelse(i %% 2 == 1, 1, 2)
+     
+     push(
+         grid::viewport(
+             layout.pos.row = r,
+             layout.pos.col = c
+         )
+     )
+     
+     print(
+         plots[[i]],
+         newpage = FALSE
+     )
+     
+     pop()
+ }
> 
> pop()
> 
> dev.off()
RStudioGD 
        2 
> 
> cat("Saved ALL_STORY_GAZE_HEATMAPS_ONE_PAGE.png\n")
Saved ALL_STORY_GAZE_HEATMAPS_ONE_PAGE.png
> # ==============================================================
> # IITB LEARNING ANALYTICS
> # ONE-PAGE VISUAL DASHBOARD
> # ALL MAIN VISUALS + 14 GAZE HEATMAPS
> # ==============================================================
> 
> library(ggplot2)
> library(dplyr)
> library(grid)
> 
> # --------------------------------------------------------------
> # 1. CHECK DATA
> # --------------------------------------------------------------
> 
> if (!exists("gaze_clean")) {
+     stop("gaze_clean is not available. Run the gaze analysis code first.")
+ }
> 
> if (!exists("student_section_dwell_clean")) {
+     stop("student_section_dwell_clean is not available.")
+ }
> 
> # --------------------------------------------------------------
> # 2. STORY DATA
> # --------------------------------------------------------------
> 
> story_data <- gaze_clean %>%
+     filter(
+         content_type %in% c("English Story", "Japanese Story"),
+         !is.na(section),
+         !is.na(gaze_x),
+         !is.na(gaze_y)
+     )
> 
> # --------------------------------------------------------------
> # 3. VISUAL 1: ENGLISH VS JAPANESE DWELL
> # --------------------------------------------------------------
> 
> language_summary <- student_section_dwell_clean %>%
+     group_by(content_type) %>%
+     summarise(
+         mean_dwell = mean(dwell_minutes, na.rm = TRUE),
+         sd_dwell = sd(dwell_minutes, na.rm = TRUE),
+         .groups = "drop"
+     )
> 
> p1 <- ggplot(
+     language_summary,
+     aes(x = content_type, y = mean_dwell)
+ ) +
+     geom_col() +
+     geom_errorbar(
+         aes(
+             ymin = pmax(0, mean_dwell - sd_dwell),
+             ymax = mean_dwell + sd_dwell
+         ),
+         width = 0.15
+     ) +
+     labs(
+         title = "Mean Visual Dwell",
+         x = NULL,
+         y = "Minutes"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(size = 9, face = "bold", hjust = .5),
+         axis.text.x = element_text(size = 7)
+     )
> 
> # --------------------------------------------------------------
> # 4. VISUAL 2: SECTION DWELL
> # --------------------------------------------------------------
> 
> section_summary <- student_section_dwell_clean %>%
+     group_by(section, content_type) %>%
+     summarise(
+         mean_dwell = mean(dwell_minutes, na.rm = TRUE),
+         .groups = "drop"
+     )
> 
> p2 <- ggplot(
+     section_summary,
+     aes(
+         x = section,
+         y = mean_dwell,
+         group = content_type,
+         linetype = content_type
+     )
+ ) +
+     geom_line(linewidth = .7) +
+     geom_point(size = 1.5) +
+     labs(
+         title = "Visual Dwell by Story Section",
+         x = NULL,
+         y = "Minutes",
+         linetype = NULL
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(size = 9, face = "bold", hjust = .5),
+         legend.position = "bottom",
+         legend.text = element_text(size = 6)
+     )
> 
> # --------------------------------------------------------------
> # 5. VISUAL 3: LEARNER DWELL VARIATION
> # --------------------------------------------------------------
> 
> if (exists("learner_gaze")) {
+     
+     p3 <- ggplot(
+         learner_gaze,
+         aes(
+             x = reorder(user_id, total_story_dwell_minutes),
+             y = total_story_dwell_minutes
+         )
+     ) +
+         geom_col() +
+         labs(
+             title = "Learner-Level Visual Dwell",
+             x = "Learner",
+             y = "Minutes"
+         ) +
+         theme_minimal(base_size = 8) +
+         theme(
+             plot.title = element_text(size = 9, face = "bold", hjust = .5),
+             axis.text.x = element_blank(),
+             axis.ticks.x = element_blank()
+         )
+     
+ } else {
+     
+     p3 <- ggplot() +
+         annotate("text", x = 1, y = 1,
+                  label = "Learner gaze data unavailable") +
+         theme_void()
+ }
> 
> # --------------------------------------------------------------
> # 6. VISUAL 4: COMPREHENSION ACCURACY
> # --------------------------------------------------------------
> 
> if (exists("student_scores_clean")) {
+     
+     accuracy_summary <- student_scores_clean %>%
+         mutate(
+             accuracy_group = case_when(
+                 accuracy == 100 ~ "100% accuracy",
+                 accuracy < 100 ~ "Below 100%",
+                 TRUE ~ "Other"
+             )
+         ) %>%
+         count(accuracy)
+     
+     p4 <- ggplot(
+         accuracy_summary,
+         aes(
+             x = factor(accuracy),
+             y = n
+         )
+     ) +
+         geom_col() +
+         labs(
+             title = "Comprehension Accuracy",
+             x = "Accuracy (%)",
+             y = "Learners"
+         ) +
+         theme_minimal(base_size = 8) +
+         theme(
+             plot.title = element_text(size = 9, face = "bold", hjust = .5)
+         )
+     
+ } else {
+     
+     p4 <- ggplot() +
+         annotate("text", x = 1, y = 1,
+                  label = "Comprehension data unavailable") +
+         theme_void()
+ }
> 
> # --------------------------------------------------------------
> # 7. HEATMAP FUNCTION
> # --------------------------------------------------------------
> 
> make_heatmap <- function(sec, lang) {
+     
+     d <- story_data %>%
+         filter(
+             section == paste("Section", sec),
+             content_type == lang
+         )
+     
+     if (nrow(d) == 0) {
+         
+         return(
+             ggplot() +
+                 annotate(
+                     "text",
+                     x = 1,
+                     y = 1,
+                     label = "No gaze data",
+                     size = 3
+                 ) +
+                 labs(
+                     title = paste0(
+                         "S", sec, " - ",
+                         ifelse(
+                             lang == "English Story",
+                             "English",
+                             "Japanese"
+                         )
+                     )
+                 ) +
+                 theme_void() +
+                 theme(
+                     plot.title = element_text(
+                         size = 8,
+                         face = "bold",
+                         hjust = .5
+                     )
+                 )
+         )
+     }
+     
+     ggplot(
+         d,
+         aes(
+             x = gaze_x,
+             y = gaze_y
+         )
+     ) +
+         geom_bin2d(bins = 25) +
+         scale_y_reverse() +
+         labs(
+             title = paste0(
+                 "S", sec, " - ",
+                 ifelse(
+                     lang == "English Story",
+                     "English",
+                     "Japanese"
+                 )
+             ),
+             x = NULL,
+             y = NULL
+         ) +
+         theme_minimal(base_size = 7) +
+         theme(
+             plot.title = element_text(
+                 size = 8,
+                 face = "bold",
+                 hjust = .5
+             ),
+             axis.text = element_blank(),
+             axis.ticks = element_blank(),
+             panel.grid = element_blank(),
+             legend.position = "none",
+             plot.margin = margin(2, 2, 2, 2)
+         )
+ }
> 
> # --------------------------------------------------------------
> # 8. CREATE ALL 14 HEATMAPS
> # --------------------------------------------------------------
> 
> heatmaps <- list()
> 
> for (s in 1:7) {
+     
+     heatmaps[[length(heatmaps) + 1]] <-
+         make_heatmap(s, "English Story")
+     
+     heatmaps[[length(heatmaps) + 1]] <-
+         make_heatmap(s, "Japanese Story")
+ }
> 
> # --------------------------------------------------------------
> # 9. COMBINE EVERYTHING
> #
> # Layout:
> #
> # ROW 1: 4 analytical visuals
> #
> # ROW 2: S1 English | S1 Japanese | S2 English | S2 Japanese
> # ROW 3: S3 English | S3 Japanese | S4 English | S4 Japanese
> # ROW 4: S5 English | S5 Japanese | S6 English | S6 Japanese
> # ROW 5: S7 English | S7 Japanese | empty       | empty
> # --------------------------------------------------------------
> 
> all_plots <- c(
+     list(p1, p2, p3, p4),
+     heatmaps
+ )
> 
> # --------------------------------------------------------------
> # 10. SAVE ONE-PAGE PNG
> # --------------------------------------------------------------
> 
> png(
+     "ALL_VISUALS_ONE_PAGE.png",
+     width = 3600,
+     height = 4800,
+     res = 300
+ )
> 
> grid.newpage()
> 
> main_layout <- grid.layout(
+     nrow = 5,
+     ncol = 4,
+     heights = unit(
+         c(1.15, 1, 1, 1, 1),
+         "null"
+     )
+ )
> 
> pushViewport(
+     viewport(
+         layout = main_layout
+     )
+ )
> 
> # ---- Top 4 analytical plots ----
> 
> for (i in 1:4) {
+     
+     pushViewport(
+         viewport(
+             layout.pos.row = 1,
+             layout.pos.col = i
+         )
+     )
+     
+     print(
+         all_plots[[i]],
+         newpage = FALSE
+     )
+     
+     popViewport()
+ }
> 
> # ---- 14 heatmaps ----
> 
> for (i in 1:14) {
+     
+     heat_index <- i + 4
+     
+     row <- 2 + floor((i - 1) / 4)
+     col <- 1 + ((i - 1) %% 4)
+     
+     pushViewport(
+         viewport(
+             layout.pos.row = row,
+             layout.pos.col = col
+         )
+     )
+     
+     print(
+         all_plots[[heat_index]],
+         newpage = FALSE
+     )
+     
+     popViewport()
+ }
> 
> # ---- Overall title ----
> 
> grid.text(
+     "Learning Analytics: Visual Attention, Gaze Behaviour and Comprehension",
+     x = .5,
+     y = .995,
+     gp = gpar(
+         fontsize = 18,
+         fontface = "bold"
+     )
+ )
> 
> popViewport()
> 
> dev.off()
RStudioGD 
        2 
> 
> # --------------------------------------------------------------
> # 11. ALSO SAVE AS PDF
> # --------------------------------------------------------------
> 
> pdf(
+     "ALL_VISUALS_ONE_PAGE.pdf",
+     width = 11.69,
+     height = 16.54
+ )
> 
> grid.newpage()
> 
> pushViewport(
+     viewport(
+         layout = main_layout
+     )
+ )
> 
> for (i in 1:4) {
+     
+     pushViewport(
+         viewport(
+             layout.pos.row = 1,
+             layout.pos.col = i
+         )
+     )
+     
+     print(
+         all_plots[[i]],
+         newpage = FALSE
+     )
+     
+     popViewport()
+ }
> 
> for (i in 1:14) {
+     
+     heat_index <- i + 4
+     
+     row <- 2 + floor((i - 1) / 4)
+     col <- 1 + ((i - 1) %% 4)
+     
+     pushViewport(
+         viewport(
+             layout.pos.row = row,
+             layout.pos.col = col
+         )
+     )
+     
+     print(
+         all_plots[[heat_index]],
+         newpage = FALSE
+     )
+     
+     popViewport()
+ }
> 
> grid.text(
+     "Learning Analytics: Visual Attention, Gaze Behaviour and Comprehension",
+     x = .5,
+     y = .995,
+     gp = gpar(
+         fontsize = 15,
+         fontface = "bold"
+     )
+ )
> 
> popViewport()
> 
> dev.off()
RStudioGD 
        2 
> 
> # --------------------------------------------------------------
> # 12. CONFIRM
> # --------------------------------------------------------------
> 
> cat("\n============================================\n")

============================================
> cat("ONE-PAGE VISUAL DASHBOARD CREATED\n")
ONE-PAGE VISUAL DASHBOARD CREATED
> cat("============================================\n")
============================================
> cat("PNG: ALL_VISUALS_ONE_PAGE.png\n")
PNG: ALL_VISUALS_ONE_PAGE.png
> cat("PDF: ALL_VISUALS_ONE_PAGE.pdf\n")
PDF: ALL_VISUALS_ONE_PAGE.pdf
> cat("Analytical visuals: 4\n")
Analytical visuals: 4
> cat("Gaze heatmaps: 14\n")
Gaze heatmaps: 14
> cat("Total visuals: 18\n")
Total visuals: 18
> cat("============================================\n")
============================================
> # ==============================================================
> # ALL DIFFERENT GAZE VISUALS - ONE PAGE
> # ==============================================================
> 
> library(ggplot2)
> library(dplyr)
> library(grid)
> 
> # --------------------------------------------------------------
> # DATA
> # --------------------------------------------------------------
> 
> story_data <- gaze_clean %>%
+     filter(
+         content_type %in% c("English Story", "Japanese Story"),
+         !is.na(section),
+         !is.na(gaze_x),
+         !is.na(gaze_y)
+     )
> 
> # --------------------------------------------------------------
> # SELECT REPRESENTATIVE SCREENS
> # One representative screen for each story section/language
> # --------------------------------------------------------------
> 
> screen_table <- story_data %>%
+     count(section, content_type, screen_id, sort = TRUE) %>%
+     group_by(section, content_type) %>%
+     slice_max(n, n = 1, with_ties = FALSE) %>%
+     ungroup()
> 
> # --------------------------------------------------------------
> # FUNCTION 1: DENSITY MAP
> # --------------------------------------------------------------
> 
> density_map <- function(d, title_text) {
+     
+     ggplot(d, aes(gaze_x, gaze_y)) +
+         stat_density_2d(
+             aes(fill = after_stat(level)),
+             geom = "polygon",
+             bins = 12,
+             alpha = .65
+         ) +
+         geom_point(
+             alpha = .08,
+             size = .25
+         ) +
+         scale_y_reverse() +
+         labs(
+             title = title_text,
+             x = "Gaze X",
+             y = "Gaze Y"
+         ) +
+         theme_minimal(base_size = 8) +
+         theme(
+             plot.title = element_text(
+                 size = 9,
+                 face = "bold",
+                 hjust = .5
+             ),
+             legend.position = "none"
+         )
+ }
> 
> # --------------------------------------------------------------
> # FUNCTION 2: RAW GAZE POINT MAP
> # --------------------------------------------------------------
> 
> point_map <- function(d, title_text) {
+     
+     ggplot(d, aes(gaze_x, gaze_y)) +
+         geom_point(
+             alpha = .20,
+             size = .45
+         ) +
+         scale_y_reverse() +
+         labs(
+             title = title_text,
+             x = "Gaze X",
+             y = "Gaze Y"
+         ) +
+         theme_minimal(base_size = 8) +
+         theme(
+             plot.title = element_text(
+                 size = 9,
+                 face = "bold",
+                 hjust = .5
+             )
+         )
+ }
> 
> # --------------------------------------------------------------
> # FUNCTION 3: TRAJECTORY MAP
> # --------------------------------------------------------------
> 
> trajectory_map <- function(d, title_text) {
+     
+     d <- d %>%
+         arrange(gaze_time) %>%
+         mutate(order = row_number())
+     
+     # Avoid excessive points for readability
+     if (nrow(d) > 1000) {
+         d <- d %>%
+             slice(seq(1, n(), length.out = 1000))
+     }
+     
+     ggplot(d, aes(gaze_x, gaze_y)) +
+         geom_path(
+             alpha = .35,
+             linewidth = .4
+         ) +
+         geom_point(
+             aes(alpha = order),
+             size = .5
+         ) +
+         scale_y_reverse() +
+         scale_alpha_continuous(
+             guide = "none"
+         ) +
+         labs(
+             title = title_text,
+             x = "Gaze X",
+             y = "Gaze Y"
+         ) +
+         theme_minimal(base_size = 8) +
+         theme(
+             plot.title = element_text(
+                 size = 9,
+                 face = "bold",
+                 hjust = .5
+             )
+         )
+ }
> 
> # --------------------------------------------------------------
> # FUNCTION 4: GAZE COUNT MAP
> # --------------------------------------------------------------
> 
> count_map <- function(d, title_text) {
+     
+     ggplot(
+         d,
+         aes(gaze_x, gaze_y)
+     ) +
+         geom_bin2d(
+             bins = 20
+         ) +
+         scale_y_reverse() +
+         labs(
+             title = title_text,
+             x = "Gaze X",
+             y = "Gaze Y"
+         ) +
+         theme_minimal(base_size = 8) +
+         theme(
+             plot.title = element_text(
+                 size = 9,
+                 face = "bold",
+                 hjust = .5
+             )
+         )
+ }
> 
> # ==============================================================
> # CREATE DIFFERENT MAPS
> # ==============================================================
> 
> # Choose the most viewed English screen from Section 2
> s2_eng_id <- screen_table %>%
+     filter(
+         section == "Section 2",
+         content_type == "English Story"
+     ) %>%
+     pull(screen_id)
> 
> s2_eng <- story_data %>%
+     filter(screen_id == s2_eng_id[1])
> 
> # Choose Section 6 Japanese
> s6_jpn_id <- screen_table %>%
+     filter(
+         section == "Section 6",
+         content_type == "Japanese Story"
+     ) %>%
+     pull(screen_id)
> 
> s6_jpn <- story_data %>%
+     filter(screen_id == s6_jpn_id[1])
> 
> # --------------------------------------------------------------
> # VISUAL 1
> # Density
> # --------------------------------------------------------------
> 
> v1 <- density_map(
+     s2_eng,
+     "1. Gaze Density - Section 2 English"
+ )
> 
> # --------------------------------------------------------------
> # VISUAL 2
> # Raw gaze points
> # --------------------------------------------------------------
> 
> v2 <- point_map(
+     s2_eng,
+     "2. Raw Gaze Points - Section 2 English"
+ )
> 
> # --------------------------------------------------------------
> # VISUAL 3
> # Trajectory
> # --------------------------------------------------------------
> 
> v3 <- trajectory_map(
+     s2_eng,
+     "3. Gaze Trajectory - Section 2 English"
+ )
Error in `slice()`:
ℹ In argument: `seq(1, n(), length.out = 1000)`.
Caused by error:
! Can't subset elements with `seq(1, n(), length.out = 1000)`.
✖ Can't convert from `seq(1, n(), length.out = 1000)` <double> to <integer> due to loss of precision.
Run `rlang::last_trace()` to see where the error occurred.
Called from: signal_abort(cnd, .file)
Browse[1]> 
> slice(seq(1, n(), length.out = 1000))
Error in `n()`:
! Must only be used inside data-masking verbs like `mutate()`, `filter()`, and
  `group_by()`.
Run `rlang::last_trace()` to see where the error occurred.

> trajectory_map <- function(d, title_text) {
+     
+     d <- d %>%
+         arrange(gaze_time) %>%
+         mutate(order = row_number())
+     
+     # Reduce very large gaze sequences safely
+     if (nrow(d) > 1000) {
+         
+         keep <- round(
+             seq(
+                 1,
+                 nrow(d),
+                 length.out = 1000
+             )
+         )
+         
+         keep <- unique(
+             pmax(
+                 1L,
+                 pmin(
+                     nrow(d),
+                     as.integer(keep)
+                 )
+             )
+         )
+         
+         d <- d[keep, ]
+     }
+     
+     ggplot(
+         d,
+         aes(
+             x = gaze_x,
+             y = gaze_y
+         )
+     ) +
+         geom_path(
+             alpha = .45,
+             linewidth = .4
+         ) +
+         geom_point(
+             alpha = .35,
+             size = .5
+         ) +
+         scale_y_reverse() +
+         labs(
+             title = title_text,
+             x = "Gaze X",
+             y = "Gaze Y"
+         ) +
+         theme_minimal(base_size = 8) +
+         theme(
+             plot.title = element_text(
+                 size = 9,
+                 face = "bold",
+                 hjust = .5
+             )
+         )
+ }
> v1 <- density_map(
+ v1 <- density_map(
+ v1 <- density_map(
+ # ============================================================
+ # FINISH THE 9 DIFFERENT VISUALS
+ # ============================================================
+ 
+ # Recreate the 9 visuals
+ v1 <- density_map(
+     s2_eng,
+     "1. Gaze Density - Section 2 English"
+ )
+ 
+ v2 <- point_map(
Error: unexpected symbol in:
"
v2"

> v1 <- density_map(s2_eng, "1. Gaze Density - Section 2 English")
> v2 <- point_map(s2_eng, "2. Raw Gaze Points - Section 2 English")
> v3 <- trajectory_map(s2_eng, "3. Gaze Trajectory - Section 2 English")
> library(grid)
> 
> png(
+     "ALL_DIFFERENT_GAZE_VISUALS_ONE_PAGE.png",
+     width = 3600,
+     height = 3600,
+     res = 300
+ )
> 
> grid.newpage()
> 
> pushViewport(
+     viewport(
+         layout = grid.layout(3, 3)
+     )
+ )
> 
> plots <- list(
+     v1,
+     v2,
+     v3,
+     v4,
+     v5,
+     v6,
+     v7,
+     v8,
+     v9
+ )
Error: object 'v4' not found

> # ============================================================
> # ONE PAGE - DIFFERENT GAZE VISUALS
> # ============================================================
> 
> library(ggplot2)
> library(dplyr)
> library(grid)
> 
> # Data
> d <- gaze_clean %>%
+     filter(
+         content_type %in% c("English Story", "Japanese Story"),
+         !is.na(section),
+         !is.na(gaze_x),
+         !is.na(gaze_y)
+     )
> 
> # Pick the screen with the most gaze observations
> best_screen <- d %>%
+     count(screen_id, content_type) %>%
+     arrange(desc(n)) %>%
+     slice(1) %>%
+     pull(screen_id)
> 
> screen_d <- d %>%
+     filter(screen_id == best_screen)
> 
> # ------------------------------------------------------------
> # 1. DENSITY
> # ------------------------------------------------------------
> 
> p1 <- ggplot(screen_d, aes(gaze_x, gaze_y)) +
+     stat_density_2d(
+         aes(fill = after_stat(level)),
+         geom = "polygon",
+         bins = 10,
+         alpha = .7
+     ) +
+     scale_y_reverse() +
+     labs(title = "Gaze Density") +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10, face = "bold", hjust = .5
+         ),
+         legend.position = "none"
+     )
> 
> # ------------------------------------------------------------
> # 2. RAW GAZE POINTS
> # ------------------------------------------------------------
> 
> p2 <- ggplot(screen_d, aes(gaze_x, gaze_y)) +
+     geom_point(alpha = .25, size = .5) +
+     scale_y_reverse() +
+     labs(title = "Raw Gaze Points") +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10, face = "bold", hjust = .5
+         )
+     )
> 
> # ------------------------------------------------------------
> # 3. GAZE TRAJECTORY
> # ------------------------------------------------------------
> 
> traj <- screen_d %>%
+     arrange(gaze_time)
> 
> if (nrow(traj) > 1000) {
+     ind <- round(
+         seq(1, nrow(traj), length.out = 1000)
+     )
+     traj <- traj[ind, ]
+ }
> 
> p3 <- ggplot(
+     traj,
+     aes(gaze_x, gaze_y)
+ ) +
+     geom_path(
+         alpha = .5,
+         linewidth = .4
+     ) +
+     geom_point(
+         alpha = .35,
+         size = .4
+     ) +
+     scale_y_reverse() +
+     labs(title = "Gaze Trajectory") +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10, face = "bold", hjust = .5
+         )
+     )
> 
> # ------------------------------------------------------------
> # 4. GAZE COUNT GRID
> # ------------------------------------------------------------
> 
> p4 <- ggplot(
+     screen_d,
+     aes(gaze_x, gaze_y)
+ ) +
+     geom_bin2d(bins = 15) +
+     scale_y_reverse() +
+     labs(title = "Gaze Count by Screen Region") +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10, face = "bold", hjust = .5
+         )
+     )
> 
> # ------------------------------------------------------------
> # 5. GAZE X DISTRIBUTION
> # ------------------------------------------------------------
> 
> p5 <- ggplot(
+     screen_d,
+     aes(gaze_x)
+ ) +
+     geom_histogram(bins = 30) +
+     labs(
+         title = "Horizontal Gaze Distribution",
+         x = "Gaze X",
+         y = "Count"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10, face = "bold", hjust = .5
+         )
+     )
> 
> # ------------------------------------------------------------
> # 6. GAZE Y DISTRIBUTION
> # ------------------------------------------------------------
> 
> p6 <- ggplot(
+     screen_d,
+     aes(gaze_y)
+ ) +
+     geom_histogram(bins = 30) +
+     labs(
+         title = "Vertical Gaze Distribution",
+         x = "Gaze Y",
+         y = "Count"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10, face = "bold", hjust = .5
+         )
+     )
> 
> # ------------------------------------------------------------
> # 7. ENGLISH VS JAPANESE
> # ------------------------------------------------------------
> 
> lang <- d %>%
+     group_by(content_type) %>%
+     summarise(
+         mean_dwell = mean(
+             interval_seconds,
+             na.rm = TRUE
+         ),
+         .groups = "drop"
+     )
> 
> p7 <- ggplot(
+     lang,
+     aes(content_type, mean_dwell)
+ ) +
+     geom_col() +
+     labs(
+         title = "English vs Japanese Gaze Dwell",
+         x = NULL,
+         y = "Mean dwell (seconds)"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10, face = "bold", hjust = .5
+         ),
+         axis.text.x = element_text(size = 7)
+     )
> 
> # ------------------------------------------------------------
> # 8. SECTION DWELL
> # ------------------------------------------------------------
> 
> sec <- student_section_dwell_clean %>%
+     group_by(section, content_type) %>%
+     summarise(
+         dwell = mean(
+             dwell_minutes,
+             na.rm = TRUE
+         ),
+         .groups = "drop"
+     )
> 
> p8 <- ggplot(
+     sec,
+     aes(
+         section,
+         dwell,
+         group = content_type,
+         linetype = content_type
+     )
+ ) +
+     geom_line(linewidth = .7) +
+     geom_point(size = 1.5) +
+     labs(
+         title = "Visual Dwell by Story Section",
+         x = NULL,
+         y = "Minutes",
+         linetype = "Version"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10, face = "bold", hjust = .5
+         ),
+         legend.position = "bottom",
+         legend.text = element_text(size = 6)
+     )
> 
> # ------------------------------------------------------------
> # 9. LEARNER VARIATION
> # ------------------------------------------------------------
> 
> p9 <- ggplot(
+     learner_gaze,
+     aes(
+         reorder(
+             user_id,
+             total_story_dwell_minutes
+         ),
+         total_story_dwell_minutes
+     )
+ ) +
+     geom_col() +
+     labs(
+         title = "Learner-Level Gaze Dwell",
+         x = NULL,
+         y = "Minutes"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10, face = "bold", hjust = .5
+         ),
+         axis.text.x = element_blank(),
+         axis.ticks.x = element_blank()
+     )
Error: object 'learner_gaze' not found

> # ============================================================
> # FINAL ONE-PAGE VISUALS
> # SELF-CONTAINED VERSION
> # ============================================================
> 
> library(ggplot2)
> library(dplyr)
> library(grid)
> 
> # ------------------------------------------------------------
> # 1. CREATE LEARNER GAZE SUMMARY
> # ------------------------------------------------------------
> 
> learner_gaze <- gaze_clean %>%
+     filter(
+         content_type %in% c(
+             "English Story",
+             "Japanese Story"
+         )
+     ) %>%
+     group_by(user_id) %>%
+     summarise(
+         total_story_dwell_minutes =
+             sum(interval_seconds, na.rm = TRUE) / 60,
+         total_gaze_count = n(),
+         english_dwell_minutes =
+             sum(
+                 interval_seconds[
+                     content_type == "English Story"
+                 ],
+                 na.rm = TRUE
+             ) / 60,
+         japanese_dwell_minutes =
+             sum(
+                 interval_seconds[
+                     content_type == "Japanese Story"
+                 ],
+                 na.rm = TRUE
+             ) / 60,
+         .groups = "drop"
+     )
> 
> # ------------------------------------------------------------
> # 2. STORY DATA
> # ------------------------------------------------------------
> 
> d <- gaze_clean %>%
+     filter(
+         content_type %in% c(
+             "English Story",
+             "Japanese Story"
+         ),
+         !is.na(section),
+         !is.na(gaze_x),
+         !is.na(gaze_y)
+     )
> 
> # ------------------------------------------------------------
> # 3. SELECT A REPRESENTATIVE SCREEN
> # ------------------------------------------------------------
> 
> best_screen <- d %>%
+     count(screen_id, content_type) %>%
+     arrange(desc(n)) %>%
+     slice(1) %>%
+     pull(screen_id)
> 
> screen_d <- d %>%
+     filter(screen_id == best_screen[1])
> 
> # ------------------------------------------------------------
> # 4. DENSITY MAP
> # ------------------------------------------------------------
> 
> p1 <- ggplot(
+     screen_d,
+     aes(gaze_x, gaze_y)
+ ) +
+     stat_density_2d(
+         aes(fill = after_stat(level)),
+         geom = "polygon",
+         bins = 10,
+         alpha = .7
+     ) +
+     scale_y_reverse() +
+     labs(
+         title = "Gaze Density"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10,
+             face = "bold",
+             hjust = .5
+         ),
+         legend.position = "none"
+     )
> 
> # ------------------------------------------------------------
> # 5. RAW GAZE POINTS
> # ------------------------------------------------------------
> 
> p2 <- ggplot(
+     screen_d,
+     aes(gaze_x, gaze_y)
+ ) +
+     geom_point(
+         alpha = .25,
+         size = .5
+     ) +
+     scale_y_reverse() +
+     labs(
+         title = "Raw Gaze Points"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10,
+             face = "bold",
+             hjust = .5
+         )
+     )
> 
> # ------------------------------------------------------------
> # 6. GAZE TRAJECTORY
> # ------------------------------------------------------------
> 
> traj <- screen_d %>%
+     arrange(gaze_time)
> 
> if (nrow(traj) > 1000) {
+     
+     keep <- round(
+         seq(
+             1,
+             nrow(traj),
+             length.out = 1000
+         )
+     )
+     
+     keep <- as.integer(keep)
+     
+     traj <- traj[keep, ]
+ }
> 
> p3 <- ggplot(
+     traj,
+     aes(gaze_x, gaze_y)
+ ) +
+     geom_path(
+         alpha = .5,
+         linewidth = .4
+     ) +
+     geom_point(
+         alpha = .35,
+         size = .4
+     ) +
+     scale_y_reverse() +
+     labs(
+         title = "Gaze Trajectory"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10,
+             face = "bold",
+             hjust = .5
+         )
+     )
> 
> # ------------------------------------------------------------
> # 7. GAZE COUNT GRID
> # ------------------------------------------------------------
> 
> p4 <- ggplot(
+     screen_d,
+     aes(gaze_x, gaze_y)
+ ) +
+     geom_bin2d(
+         bins = 15
+     ) +
+     scale_y_reverse() +
+     labs(
+         title = "Gaze Count by Screen Region"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10,
+             face = "bold",
+             hjust = .5
+         )
+     )
> 
> # ------------------------------------------------------------
> # 8. HORIZONTAL GAZE DISTRIBUTION
> # ------------------------------------------------------------
> 
> p5 <- ggplot(
+     screen_d,
+     aes(gaze_x)
+ ) +
+     geom_histogram(
+         bins = 30
+     ) +
+     labs(
+         title = "Horizontal Gaze Distribution",
+         x = "Gaze X",
+         y = "Count"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10,
+             face = "bold",
+             hjust = .5
+         )
+     )
> 
> # ------------------------------------------------------------
> # 9. VERTICAL GAZE DISTRIBUTION
> # ------------------------------------------------------------
> 
> p6 <- ggplot(
+     screen_d,
+     aes(gaze_y)
+ ) +
+     geom_histogram(
+         bins = 30
+     ) +
+     labs(
+         title = "Vertical Gaze Distribution",
+         x = "Gaze Y",
+         y = "Count"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10,
+             face = "bold",
+             hjust = .5
+         )
+     )
> 
> # ------------------------------------------------------------
> # 10. ENGLISH VS JAPANESE
> # ------------------------------------------------------------
> 
> language_dwell <- d %>%
+     group_by(content_type) %>%
+     summarise(
+         mean_dwell =
+             sum(interval_seconds, na.rm = TRUE) /
+             n_distinct(user_id) / 60,
+         .groups = "drop"
+     )
> 
> p7 <- ggplot(
+     language_dwell,
+     aes(
+         content_type,
+         mean_dwell
+     )
+ ) +
+     geom_col() +
+     labs(
+         title = "English vs Japanese Visual Dwell",
+         x = NULL,
+         y = "Mean dwell (minutes)"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10,
+             face = "bold",
+             hjust = .5
+         ),
+         axis.text.x = element_text(
+             size = 7
+         )
+     )
> 
> # ------------------------------------------------------------
> # 11. SECTION DWELL
> # ------------------------------------------------------------
> 
> section_dwell <- gaze_clean %>%
+     filter(
+         content_type %in% c(
+             "English Story",
+             "Japanese Story"
+         ),
+         !is.na(section)
+     ) %>%
+     group_by(
+         section,
+         content_type
+     ) %>%
+     summarise(
+         dwell =
+             sum(interval_seconds, na.rm = TRUE) /
+             n_distinct(user_id) / 60,
+         .groups = "drop"
+     )
> 
> p8 <- ggplot(
+     section_dwell,
+     aes(
+         section,
+         dwell,
+         group = content_type,
+         linetype = content_type
+     )
+ ) +
+     geom_line(
+         linewidth = .7
+     ) +
+     geom_point(
+         size = 1.5
+     ) +
+     labs(
+         title = "Visual Dwell by Story Section",
+         x = NULL,
+         y = "Minutes",
+         linetype = "Version"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10,
+             face = "bold",
+             hjust = .5
+         ),
+         legend.position = "bottom",
+         legend.text = element_text(
+             size = 6
+         )
+     )
> 
> # ------------------------------------------------------------
> # 12. LEARNER VARIATION
> # ------------------------------------------------------------
> 
> p9 <- ggplot(
+     learner_gaze,
+     aes(
+         reorder(
+             user_id,
+             total_story_dwell_minutes
+         ),
+         total_story_dwell_minutes
+     )
+ ) +
+     geom_col() +
+     labs(
+         title = "Learner-Level Visual Dwell",
+         x = NULL,
+         y = "Minutes"
+     ) +
+     theme_minimal(base_size = 8) +
+     theme(
+         plot.title = element_text(
+             size = 10,
+             face = "bold",
+             hjust = .5
+         ),
+         axis.text.x = element_blank(),
+         axis.ticks.x = element_blank()
+     )
> 
> # ============================================================
> # 13. COMBINE ALL 9 VISUALS
> # ============================================================
> 
> plots <- list(
+     p1, p2, p3,
+     p4, p5, p6,
+     p7, p8, p9
+ )
> 
> png(
+     "FINAL_ALL_DIFFERENT_VISUALS_ONE_PAGE.png",
+     width = 3600,
+     height = 3600,
+     res = 300
+ )
> 
> grid.newpage()
> 
> pushViewport(
+     viewport(
+         layout = grid.layout(
+             3,
+             3
+         )
+     )
+ )
> 
> for (i in 1:9) {
+     
+     r <- ceiling(i / 3)
+     c <- ((i - 1) %% 3) + 1
+     
+     pushViewport(
+         viewport(
+             layout.pos.row = r,
+             layout.pos.col = c
+         )
+     )
+     
+     print(
+         plots[[i]],
+         newpage = FALSE
+     )
+     
+     popViewport()
+ }
> 
> popViewport()
> 
> grid.text(
+     "Gaze Behaviour and Learning Analytics",
+     x = .5,
+     y = .995,
+     gp = gpar(
+         fontsize = 18,
+         fontface = "bold"
+     )
+ )
> 
> dev.off()
RStudioGD 
        2 
> 
> cat("\n====================================\n")

====================================
> cat("SUCCESS!\n")
SUCCESS!
> cat("FINAL_ALL_DIFFERENT_VISUALS_ONE_PAGE.png\n")
FINAL_ALL_DIFFERENT_VISUALS_ONE_PAGE.png
> cat("====================================\n")
====================================
> getwd()
[1] "/Users/shekhargoud/Desktop/LA_Reflect_Analysis"
> file.exists("FINAL_ALL_DIFFERENT_VISUALS_ONE_PAGE.png")
[1] TRUE
> html <- '
+ <!DOCTYPE html>
+ <html>
+ <head>
+ <meta charset="UTF-8">
+ <title>Learning Analytics Visual Dashboard</title>
+ 
+ <style>
+ body {
+   font-family: Arial, sans-serif;
+   max-width: 1400px;
+   margin: auto;
+   padding: 30px;
+   background: #f5f5f5;
+ }
+ 
+ h1 {
+   text-align: center;
+ }
+ 
+ .student {
+   text-align: center;
+   margin-bottom: 25px;
+ }
+ 
+ .dashboard {
+   background: white;
+   padding: 20px;
+   box-shadow: 0 2px 8px rgba(0,0,0,.15);
+ }
+ 
+ img {
+   width: 100%;
+   height: auto;
+   display: block;
+ }
+ 
+ .note {
+   margin-top: 20px;
+   background: white;
+   padding: 15px;
+ }
+ </style>
+ 
+ </head>
+ 
+ <body>
+ 
+ <h1>Gaze Behaviour and Learning Analytics</h1>
+ 
+ <div class="student">
+ <strong>Bejawada Shekhar</strong><br>
+ Student ID: 26M1032
+ </div>
+ 
+ <div class="dashboard">
+ 
+ <img src="FINAL_ALL_DIFFERENT_VISUALS_ONE_PAGE.png"
+      alt="Learning Analytics Visual Dashboard">
+ 
+ </div>
+ 
+ <div class="note">
+ 
+ <strong>Visual Dashboard</strong><br><br>
+ 
+ This dashboard presents gaze density, raw gaze locations,
+ gaze trajectories, spatial gaze distributions, English-Japanese
+ visual dwell comparisons, story-section dwell patterns, and
+ learner-level visual dwell.
+ 
+ </div>
+ 
+ </body>
+ </html>
+ '
> 
> writeLines(html, "index.html")
> 
> cat("index.html created successfully\\n")
index.html created successfully\n
> file.info("index.html")$size
[1] 1141
> file.exists("FINAL_ALL_DIFFERENT_VISUALS_ONE_PAGE.png")
[1] TRUE
> 
