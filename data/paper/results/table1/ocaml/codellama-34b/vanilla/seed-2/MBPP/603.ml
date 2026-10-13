let rec get_ludic (n : int) : int list =
    match n with
    | 0 | 1 -> [0]
    | n when n > 1 -> let rec loop x (l : int list) =
                        match l with
                        | [] -> []
                        | h :: t -> h :: loop (h + x) t
                    in loop 1 [1]
    | _ -> failwith "Invalid input"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
