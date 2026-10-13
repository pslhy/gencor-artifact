let rec all_Characters_Same (s : string) : bool =
  match s with
  | "" -> true
  | _ -> begin
      let first_Char = String.get s 0 in
      let rest_String = String.sub s 1 (String.length s - 1) in
      match rest_String with
      | "" -> true
      | _ -> (first_Char = String.sub rest_String 0 (String.length rest_String)) && (all_Characters_Same rest_String)
    end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
