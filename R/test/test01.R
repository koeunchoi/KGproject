fig30 = data.frame(
  TriCen1=c(rep(c(0,1,2,3), 3)), Condition=factor(rep(c("0NC","2GC","1SC"), each=4)),
  Probability2 = c(0.6526071, 0.3303127, 0.2458109, 0.3515100, 0.7343456, 0.4205522, 0.3241388, 0.4437037, 0.6763652, 0.3543042, 0.2661036, 0.3761763))
fig30



b <- ggplot(data=fig30, aes(x=TriCen1, y=Probability2, group=as.factor(Condition), shape=factor(Condition)))
b <- b + geom_line(aes(linetype= factor(Condition)), size = 1) + ylim(0,1)
b
b <- b + geom_point(size = 7, stroke = 1) + scale_shape_manual(values=c(24,20,15), labels= c("Non-Contingent", "General Contingent", "Specific Contingent"))
b
b <- b + scale_linetype_manual(values=c("dashed","solid", "dotted"), labels= c("Non-Contingent", "General Contingent", "Specific Contingent"))
b

