(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
let rec index_minimum (test_list :  (string * int) list) : string =
    let rec aux min_elt (test_list :  (string * int) list) : string =
        match test_list with
        | [] -> min_elt
        | (s, i) :: tl ->
            if i < i then
                aux (s, i) tl
            else
                aux min_elt tl
     in
     let (s, i) = test_list in
     aux (s, i) test_list

let l =  [("a", 1); ("b", 2); ("c", 3)];;
print_endline (index_minimum l);;

