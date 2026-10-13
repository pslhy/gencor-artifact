let rec text_starta_endb (text : string) : bool =
  if String.length text < 2 then
    false
  else if String.get text 0 = 'a' && String.get text (String.length text - 1) = 'b' then
    true
  else
    text_starta_endb (String.sub text 1 (String.length text - 1))

let () =
  assert (text_starta_endb "a12345b" = true);
  assert (text_starta_endb "a" = true);
  assert (text_starta_endb "a+*b" = true);
  assert (text_starta_endb "ab" = true);
  assert (text_starta_endb "ba" = false);
  assert (text_starta_endb "a(b" = false);
  assert (text_starta_endb "a*b" = false);
  assert (text_starta_endb "a+b" = false);
  assert (text_starta_endb "a;b" = false);
  assert (text_starta_endb "a=" = false);
  assert (text_starta_endb "a?" = false);
  assert (text_starta_endb "a++b" = false);
  assert (text_starta_endb "a+*$b" = false);
  assert (text_starta_endb "ab*" = false);
  assert (text_starta_endb "ab+" = false);
  assert (text_starta_endb "abc" = false);
  assert (text_starta_endb "abd" = false)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
