let rec count_occurance (s : string) : int =
    let pos = String.index_opt s 'std' in
    match pos with
    | None -> 0
    | Some pos -> 1 + count_occurance (String.sub s (pos + 1) (String.length s - pos - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
