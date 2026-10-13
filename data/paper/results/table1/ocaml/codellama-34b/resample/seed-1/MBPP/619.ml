(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
let rec move_num (test_str : string) : string =
    let is_num = function '0'..'9' -> true | _ -> false in
    let rec sub_move front back =
        if back = "" then front
        else if is_num (back.[0]) then
            sub_move front (String.sub back 1 ((String.length back) - 1))
        else sub_move (front ^ String.sub back 0 1) (String.sub back 1 ((String.length back) - 1)) 
    in 
        sub_move "" test_str

