let rec sort_counter (dict1 : (string * int) list) :  (string * int) list =
    match dict1 with
        | [] -> []
        | (key, value) :: t -> (key, value) :: sort_counter (List.filter (fun (k, _) -> k <> key) t)
               
(* Sort an association list by value *)
let sort_assoc (dict : (string * int) list) :  (string * int) list =
    List.sort (fun (_, v1) (_, v2) -> compare v1 v2) (sort_counter dict)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
