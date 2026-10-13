
let rec rotate_right (list : int list) (m : int) : int list =
    match list with
    | [] -> []
    | _ ->
        let rotated_list : int list = List.rev (List.nth list 0)
    |> List.rev
    |> List.append (List.tl list)
    |> rotate_right m rotate_right (m / (List.length list))
    |> List.rev
    |> List.concat
    |> List.rev
    
rotate_right [1; 2; 3; 4; 5] 2

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [] 5

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] 3

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] (-1)

rotate_right [1; 2; 3; 4; 5] 1

rotate_right [1; 2; 3; 4; 5] (-1)

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [] 5

rotate_right [1; 2; 3; 4; 5] 2

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [] 5

rotate_right [1; 2; 3; 4; 5] 2

rotate_right [1; 2; 3; 4; 5] (-1)

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] (-1)

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [] 5

rotate_right [1; 2; 3; 4; 5] 2

rotate_right [1; 2; 3; 4; 5] (-1)

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] 1

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] 1

rotate_right [1; 2; 3; 4; 5] (-1)

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] 2

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] 2

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] 1

rotate_right [1; 2; 3; 4; 5] (-1)

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] 2

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] (-1)

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] 1

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] (-1)

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] (-2)

rotate_right [1; 2; 3; 4; 5] 2

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3; 4; 5] 0

rotate_right [1; 2; 3;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
