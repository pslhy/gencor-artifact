let rec int_to_mini_roman (number : int) : string =
    let symbols = [| "i", 1; "v", 5; "x", 10; "l", 50; "c", 100; "d", 500; "m", 1000 |] in
    let rec loop (number : int) (acc : string) : string =
        if number = 0 then acc
        else
            let (symbol, value, next_number) =
                if number < 5 then (Some symbols.(0), 1, number - 1)
                else if number < 10 then (Some symbols.(2), 10, number - 9)
                else (Some symbols.(4), 500, number - 400)
            loop
    in
    number |> loop "" |> String.lowercase_ascii


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
