# ModalDismissTest
Reproduce iOS bug when dismissing multiple view controllers

Here is what it looks like when trying to dismiss the modal stack. According to Apple docs this should animate the topmost controller but it doesn't:

![Original bug](/screenshots/modal-original.gif?raw=true "Original bug")

Here is what it looks like with a workaround from https://stackoverflow.com/a/41942466/1713512:

![Workaround](/screenshots/modal-workaround.gif?raw=true "Workaround")

