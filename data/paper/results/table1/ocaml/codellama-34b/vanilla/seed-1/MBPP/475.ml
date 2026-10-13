let rec sort_counter (dict1 : (string * int) list) :  (string * int) list =
    let rec aux (dict2: (string * int) list) : (string * int) list =
        match dict2 with
        | [] -> []
        | (key, value) :: tail -> (
        match aux tail with
        | (k, vs) :: t -> (k, vs)
        | [] -> (key, value) :: t
        )
in
    aux dict1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
