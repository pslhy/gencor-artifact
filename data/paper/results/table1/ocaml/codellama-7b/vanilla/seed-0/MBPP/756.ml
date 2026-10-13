let rec text_match_zero_one (text : string) : bool =
  match text with
  | "" -> true
  | _ ->
    let rec aux (i : int) : bool =
      if i = String.length text - 1 then
        text.[i] = 'a'
      else if text.[i] = 'b' then
        aux (i + 1)
      else
        false
    in
    if aux 0 then
      true
    else
      text.[0] = 'a' && text_match_zero_one (String.sub text 1 (String.length text - 1))

let _ =
  assert (text_match_zero_one "a");
  assert (text_match_zero_one "ab");
  assert (text_match_zero_one "abb");
  assert (text_match_zero_one "bbb");
  assert (text_match_zero_one "bab");
  assert (text_match_zero_one "aabb");
  assert (text_match_zero_one "aaabb");
  assert (text_match_zero_one "aabbb");
  assert (text_match_zero_one "abbbb");
  assert (text_match_zero_one "aabbbb");
  assert (text_match_zero_one "abab");
  assert (text_match_zero_one "abcca");
  ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)
