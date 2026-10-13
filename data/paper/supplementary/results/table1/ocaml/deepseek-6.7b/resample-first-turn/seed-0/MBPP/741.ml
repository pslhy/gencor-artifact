let rec all_Characters_Same (s : string) : bool =
    if s = "" then true
    else
        let ch = String.get s 0 in
        let rest = String.sub s 1 (String.length s - 1) in
        String.forall (fun c -> c = ch) rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
