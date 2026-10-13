(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec int_to_mini_roman (number : int) : string =
    let symbols = [| "i", 1; "v", 5; "x", 10; "l", 50; "c", 100; "d", 500; "m", 1000 |] in
    let rec loop (number : int) (acc : string) (symbols : (string * int) array) (len : int) : string =
        if len = 0 then acc
        else
            let symbol = if len = 1 then "i"
                        else if len = 2 then "x"
                        else if len = 3 then "c"
                        else "m"
            in
            loop (number - symbols.(len - 1).(1)) (acc ^ symbol) symbols (len - 1)
    in
    loop number "" symbols symbols.Length |> String.lowercase_ascii

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:43: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec int_to_mini_roman (number : int) : string =
    let symbols = [| "i", 1; "v", 5; "x", 10; "l", 50; "c", 100; "d", 500; "m", 1000 |] in
    let rec loop (number : int) (acc : string) (symbols : (string * int) array) (len : int) : string =
        if len = 0 then acc
        else
            let curr = symbols.(len - 1).(1) in
            if number >= curr then loop (number - curr) (acc ^ symbols.(len - 1).(0)) symbols (len - 1)
            else acc
    in
    loop number "" symbols symbols.Length |> String.lowercase_ascii

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:43: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec int_to_mini_roman (number : int) : string =
    let symbols = [| "i", 1; "v", 5; "x", 10; "l", 50; "c", 100; "d", 500; "m", 1000 |] in
    let rec loop (number : int) (acc : string) (symbols : (string * int) array) (len : int) : string =
        if len = 0 then acc
        else
            let curr = symbols.(len - 1).(1) in
            if number >= curr then loop (number - curr) (acc ^ symbols.(len - 1).(0)) symbols (len - 1)
            else acc
    in
    loop number "" symbols symbols.Length |> String.lowercase_ascii

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:43: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec int_to_mini_roman (number : int) : string =
    let symbols = [|"i", 1; "v", 5; "x", 10; "l", 50; "c", 100; "d", 500; "m", 1000|] in
    let rec loop (number : int) (acc : string) (symbols : (string * int) array) (len : int) : string =
        if len = 0 then acc
        else
            let curr = symbols.(len - 1).(1) in
            if number >= curr then loop (number - curr) (acc ^ symbols.(len - 1).(0)) symbols (len - 1)
            else acc
    in
    loop number "" symbols symbols.Length |> String.lowercase_ascii

