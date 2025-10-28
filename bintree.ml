type 'a tree =
  | Nil
  | Node of 'a node
and 'a node = {
  value: 'a;
  left: 'a tree;
  right: 'a tree
}

let test_tree =
  Node {value=3
  ;left=Node {value=1; left=Nil; right=Nil}
  ;right=Node {value=2; left=Nil; right=Nil}
  }

let rec preorder tree =
  match tree with
  | Nil -> Printf.printf "nil\n"
  | Node {value; left; right} -> (
    Printf.printf "%d\n" value;
    preorder left;
    preorder right;
  )

let rec inorder tree =
  match tree with
  | Nil -> Printf.printf "nil\n"
  | Node {value; left; right} -> (
    inorder left;
    Printf.printf "%d\n" value;
    inorder right;
  )

let rec postorder tree =
  match tree with
  | Nil -> Printf.printf "nil\n"
  | Node {value; left; right} -> (
    postorder left;
    postorder right;
    Printf.printf "%d\n" value;
  )
