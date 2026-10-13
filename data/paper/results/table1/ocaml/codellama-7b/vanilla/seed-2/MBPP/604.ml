let rec reverse_words (s : string) : string =
  match String.split_on_char ' ' s with
  | [] -> ""
  | h :: t -> let rev_s = h in
    List.fold_left (fun acc word ->
        acc ^ " " ^ word) rev_s t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
