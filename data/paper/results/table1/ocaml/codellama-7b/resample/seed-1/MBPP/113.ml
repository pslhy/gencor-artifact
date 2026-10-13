(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
let rec check_integer (text : string) : bool =
    let is_integer =
        match text with
        | "" -> false
        | "+" | "-" -> false
        | _ -> Int.of_string text = Some(Int.of_string text)
    in
    if is_integer then
        true
    else
        check_integer (String.sub text 1 (String.length text - 1))

let () =
    assert (check_integer "123" == true);
    assert (check_integer "123abc" == false);
    assert (check_integer "abc123" == false);

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:16: Unbound value "Int.of_string" *)
(*     Hint: Did you mean "to_string"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_integer (text : string) : bool =
    match text with
    | "" -> false
    | "+" | "-" -> false
    | _ -> Int.of_string text = Some(Int.of_string text)

let () =
    assert (check_integer "123" == true);
    assert (check_integer "123abc" == false);
    assert (check_integer "abc123" == false);

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:12: Unbound value "Int.of_string" *)
(*     Hint: Did you mean "to_string"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_integer (text : string) : bool =
    match text with
    | "" -> false
    | "+" | "-" -> false
    | _ -> to_string text = Some(to_string text)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:12: Unbound value "to_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_integer (text : string) : bool =
    match text with
    | "" -> false
    | "+" | "-" -> false
    | _ -> Int.of_string text = Int.of_string text

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:12: Unbound value "Int.of_string" *)
(*     Hint: Did you mean "to_string"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_integer (text : string) : bool =
    match text with
    | "" -> false
    | "+" | "-" -> false
    | _ -> string_of_int (int_of_string text) = text

