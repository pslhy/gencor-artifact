let rec remove_Occ (s : string) (ch : string) : string =
  match s with
  | "" -> ""
  | x -> 
      if String.contains x ch then 
        let pos_first = String.index x ch in 
        let pos_last = String.rindex x ch in 
        String.sub s 0 pos_first ^ String.sub s (pos_last + 1) (String.length s - pos_last - 1)
      else s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
