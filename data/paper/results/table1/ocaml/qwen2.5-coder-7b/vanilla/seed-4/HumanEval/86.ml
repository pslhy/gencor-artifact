let rec anti_shuffle (s : string) : string = 
  let rec sort_word (w : string) : string =
    let rec swap_if_needed (lst : char list) : char list =
      match lst with
      | [] | [_] -> lst
      | a :: b :: rest -> 
          if a > b then b :: swap_if_needed (a :: rest) else a :: swap_if_needed (b :: rest)
    in 
    let rec convert_to_list (str : string) : char list = 
      if str = "" then [] else str.[0] :: convert_to_list (String.sub str 1 ((String.length str) - 1))
    in
    let rec convert_to_string (lst : char list) : string =
      match lst with
      | [] -> ""
      | h :: t -> String.make 1 h ^ convert_to_string t
    in
    convert_to_string (swap_if_needed (convert_to_list w))
  in
  let rec process_string (str : string) : string =
    if str = "" then ""
    else 
      let word_start = 
        try Some (String.index str ' ') with 
        | Not_found -> None
      in
      match word_start with
      | Some (start) -> 
          sort_word (String.sub str 0 start) ^ " " ^ process_string (String.sub str (start + 1) ((String.length str) - start - 1))
      | None -> sort_word str
  in
  process_string s


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
