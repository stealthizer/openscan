# Focus Stacking

Focus stacking is a technique that allows photographers to create a single image where objects on various focal planes are all in focus. This ensures that the program tthat uses the photos to reconstruct the model has no parts of a photo in blur, maximizing the amount of features that it can find on a photo.

## Focus Stacking in Openscan

### Getting the photoset

As for the last version on `betaArdu` to use focus stacking you have to check on the gear icon that you can fount in the top-right part of the preview window and select the amount of stacking (ie number of photos to perform) for each position. After that you can select a range for the focus that will be performed in the stacking session.

![focus stacking](/docs/img/focus_stacking.png)

When the capture session is over you will find a zip file containing the number of photos you have chosen multiplied by the number of stacking.

### Preparing the photoset

We will now prepare the photoset for the focus-stacking process. What we need to do is to ensure that all the photos taken to build the stack are contained in a folder together, so the application that handles the stacking process knows the dataset to work on. As the zip obtained from the openscan process has all photos in plain, we can use a script that does that job. There are 2 versions, one for [windows](/scripts/focus_stacking/stack_photos.cmd) and another for [*nix/macos](/scripts/focus_stacking/stack_photos.sh). You can run this script on the folder where you have the files or in a upper folder, as it gets all the photos present in the path where you are running the script. This is useful if you want to create all the folders for each capture that you have performed on the model (changing capture positions). The result will be a set of fotos in a folder called `ordered`

### Helicon

Once you Have the sorted photoset you have to load it on [Helicon](https://www.heliconsoft.com/heliconsoft-products/helicon-focus/). Press f7 to show the batch dialog and you can drag the `ordered` folder in the dialog window. The result has to be the number of photos that you selected on openscan, as its showing ho many processes it will do, not how many photos it has in queue.

Press ´Render´ and the process will begin the stacking process. Once finished, go to file -> Save Everything and choose your destination folder. The resulting folder is what you have to load in Metashape