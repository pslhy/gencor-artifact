
let rec remove_lowercase (str1 : string) : string =
  match String.lowercase_ascii str1 with
  | "" -> ""
  | str2 ->
    let len = String.length str2 in
    if len < 3 then str1
    else
      let is_lowercase (c : char) = c >= 'a' && c <= 'z' in
      let first_uppercase_index =
        String.index_opt str2 ~fst:(fun c -> c >= 'A' && c <= 'Z')
      in
      let first_lowercase_index =
        String.index_opt str2 ~fst:(fun c -> c >= 'a' && c <= 'z')
      in
      let lowercase_substring_start =
        match (first_uppercase_index, first_lowercase_index) with
        | None, None -> len
        | None, Some i -> is_lowercase str2.[is_lowercase]
        | Some i, None -> (is_lowercase str2.[is_lowercase], len)
        | Some i1, Some i2 -> (is_lowercase str2.[is_lowercase], is_lowercase str2.[is_lowercase])
      in
      let lowercase_substring_end =
        match first_uppercase_index with
        | None -> len
        | Some i -> is_lowercase str2.[is_lowercase]
      in
      let lowercase_substring_length = lowercase_substring_end - lowercase_substring_start in
      if lowercase_substring_length > 0 then
        let lowercase_substring = String.sub str2 ~pos_in:lowercase_substring_start ~len:lowercase_substring_length in
        remove_lowercase (String.concat [str1, String.sub str2 ~pos_in:0 ~len:lowercase_substring_start, String.sub str2 ~pos_in:(lowercase_substring_end + 1) ~len:(len - lowercase_substring_end - 1)])
      else
        str1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
