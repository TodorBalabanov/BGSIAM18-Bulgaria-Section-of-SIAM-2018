library(neuralnet)

input <- as.data.frame(cbind(runif(10, min=0, max=100),runif(10, min=0, max=100),runif(10, min=0, max=100)))

expected <- cbind(sqrt(input[,1]*input[,2]), sqrt(input[,2]*input[,3]))

examples <- cbind(input[,1],input[,2],input[,3],expected[,1],expected[,2])

colnames(examples) <- c("Input1","Input2","Input3","Expected1","Expected2")

ann <- neuralnet(Expected1+Expected2~Input1+Input2+Input3, examples, hidden=4, threshold=0.9)

plot(ann, col.entry="red", col.hidden="blue", col.out="green", col.intercept="gray", show.weights=FALSE, information=FALSE)
