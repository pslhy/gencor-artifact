let rec remove_odd (str1 : string) : string = 
    let should_remove (c : char) =
        (int_of_char c) mod 2 = 1
    in
    String.filter (fun c -> not (should_remove c)) str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
