let rec remove_length (test_str : string) (k : int) : string =
  let rec remove_words (str : string) (len : int) : string =
    match str with
    | "" -> ""
    | _ when String.length str <= len -> ""
    | s -> 
        let len_s = String.length s in
        let word_s = String.sub s 0 (len + 1) in
        let space_pos = String.index word_s ' ' in
        let word = String.sub word_s 0 space_pos in
        let rest = String.sub word_s (space_pos + 1) (len_s - space_pos - 1) in
        word ^ remove_words rest len
  in
  let res = remove_words test_str k in
  let rec remove_extra_space (str : string) : string =
    match str with
    | "" -> ""
    | _ when String.get str 0 = ' ' && String.get str (String.length str - 1) = ' ' -> remove_extra_space (String.sub str 1 (String.length str - 2))
    | _ -> str
  in
  remove_extra_space res


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
