let rec anti_shuffle (s : string) : string =
  let len = String.length s in
  if len <= 1 then s else
    let rec helper (i : int) (j : int) (chars : char list) : char list =
      if j = len then chars else
        if s.[j] = ' ' then helper i (j + 1) (chars @ [s.[j]]) else
          if i = j then helper j (j + 1) (chars @ [s.[i]]) else
            if s.[j] > s.[i] then helper i (j + 1) (chars @ [s.[i]]) else
              helper (i + 1) j (chars @ [s.[j]]) in
    let sorted_chars = helper 0 0 [] in
    String.of_char_list sorted_chars
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a string and returns an ordered version of it. *)
(*     Ordered version of string, is a string where all words (separated by space) *)
(*     are replaced by a new word where all the characters arranged in *)
(*     ascending order based on ascii value. *)
(*     Note: You should keep the order of words and blank spaces in the sentence. *)
(*     For example: *)
(*     >>> anti_shuffle "Hi" *)
(*     "Hi" *)
(*     >>> anti_shuffle "hello" *)
(*     "ehllo" *)
(*     >>> anti_shuffle "Hello World!!!" *)
(*     "Hello !!!Wdlor" *)
