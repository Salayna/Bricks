# {{featureName.titleCase()}}
The Feature folder contains all the files related to a specific feature of the application. This folder is typically named after the feature itself, such as __Login__, __Settings__, or __Profile__.

## domain
The __domain__ subfolder contains the core business logic for the feature. It is divided into three subfolders:

__*entities:*__ contains the models that represent the data used in the feature. In this project, the models are implemented using Flutter Freezed.  
__*repositories:*__ contains interfaces that define how the feature interacts with data sources.  
__*usecases:*__ contains the business logic or operations that the feature needs to perform.  

## data
The __data__ subfolder contains the implementation of the interfaces defined in the domain.repositories subfolder. It is divided into three subfolders:

__*models:*__ contains the models that represent the data used by the feature. In this project, the models are implemented using Flutter Freezed and stored using Hive Flutter.  
__*repositories:*__ contains the implementation of the interfaces defined in the `domain.repositories` subfolder.  
__*datasources:*__ contains the classes responsible for retrieving and storing data from external sources, such as APIs or databases.
## presentation
The __presentation__ subfolder contains the UI components for the feature. It is divided into two subfolders:

__*pages:*__ contains the top-level screens for the feature.  
__*widgets:*__ contains the reusable UI components used by the pages.
## common
The __common__ subfolder contains files that are common to the feature and not specific to any of the other subfolders. It typically contains a file called __f{{featureName.snakeCase()}}_injection.dart__ that initializes the feature in the dependency injection container. This file should be included in ``part of '../../../di/injection_container.dart'``.

## Generating Files
Some files in the project need to be generated, such as the ``*.freezed.dart`` files for the entities and models in the domain.entities and data.models subfolders, and the ``*.g.dart`` files for the Hive Flutter adapters in the data.models subfolder.

To generate these files, run the following commands:

For the ``*.freezed.dart`` files: ``flutter pub run build_runner watch --delete-conflicting-outputs``
For the ``*.g.dart`` files: ``flutter pub run build_runner watch --delete-conflicting-outputs``
These commands will generate the necessary files whenever changes are made to the corresponding models or adapters.

__*Better used with the flutter clean architeccture brick (coming soon)*__