let scale m (x,y) = (m*.x,m*.y)
;;

let length (x,y) = sqrt(x*.x +. y*.y)
;;

let vec_add (x1,y1) (x2,y2) = (x1+.x2,y1+.y2)
;;

let dot (x1,y1) (x2,y2) = (x1*.x2+.y1*.y2)
;;
