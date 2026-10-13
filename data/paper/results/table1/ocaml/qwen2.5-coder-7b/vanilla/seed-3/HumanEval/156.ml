let rec int_to_mini_roman (number : int) : string = 
  let roman_numerals = [
    (1000, "m");
    (900, "cm");
    (500, "d");
    (400, "cd");
    (100, "c");
    (90, "xc");
    (50, "l");
    (40, "xl");
    (10, "x");
    (9, "ix");
    (5, "v");
    (4, "iv");
    (1, "i")
  ] in
  let rec convert num result =
    match roman_numerals with
    | [] -> result
    | (value, symbol) :: rest ->
        if num >= value then
          convert (num - value) (result ^ symbol)
        else
          convert num result
  in
  convert number ""

(* Examples *)
let () =
  assert (int_to_mini_roman 19 = "xix");
  assert (int_to_mini_roman 152 = "clii");
  assert (int_to_mini_roman 426 = "cdxxvi")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer, obtain its roman numeral equivalent as a string, *)
(*     and return it in lowercase. *)
(*     Restrictions: 1 <= num <= 1000 *)
(*     Examples: *)
(*     >>> int_to_mini_roman 19 *)
(*     "xix" *)
(*     >>> int_to_mini_roman 152 *)
(*     "clii" *)
(*     >>> int_to_mini_roman 426 *)
(*     "cdxxvi" *)
