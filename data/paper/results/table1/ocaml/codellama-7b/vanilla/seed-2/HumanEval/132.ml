let rec is_nested (string : string) : bool =
  match string with
  | "" -> false
  | _ ->
      let opening_bracket_index = String.index_opt string '[' in
      match opening_bracket_index with
      | None -> false
      | Some opening_bracket_index ->
          let closing_bracket_index = String.index_opt string ']' in
          match closing_bracket_index with
          | None -> false
          | Some closing_bracket_index ->
              if opening_bracket_index < closing_bracket_index then
                is_nested (String.sub string (opening_bracket_index + 1) (closing_bracket_index - opening_bracket_index - 1))
              else
                is_nested (String.sub string (closing_bracket_index + 1) (opening_bracket_index - closing_bracket_index - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function that takes a string as input which contains only square brackets. *)
(*     The function should return true if and only if there is a valid subsequence of brackets *)
(*     where at least one bracket in the subsequence is nested. *)
(*     >>> is_nested "[[]]" *)
(*     true *)
(*     >>> is_nested "[]]]]]]][[[[[]" *)
(*     false *)
(*     >>> is_nested "[][]" *)
(*     false *)
(*     >>> is_nested "[]" *)
(*     false *)
(*     >>> is_nested "[[][]]" *)
(*     true *)
(*     >>> is_nested "[[]][[" *)
(*     true *)
