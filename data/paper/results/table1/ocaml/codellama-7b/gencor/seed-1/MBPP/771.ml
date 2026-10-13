
let rec check_expression (exp : string) : bool =
    let is_balanced = ref true in

    (* This function checks if the given string of characters is
       a closing bracket. *)
    let is_closing_bracket (s : string) : bool =
        match s with
        | ")" | "}" | "]" -> true
        | _ -> false
    in

    (* This function checks if the given string of characters is
       a opening bracket. *)
    let is_opening_bracket (s : string) : bool =
        match s with
        | "(" | "{" | "[" -> true
        | _ -> false
    in

    (* This function checks if the given string of characters has
       unequal number of opening and closing brackets. *)
    let has_unequal_brackets (s : string) : bool =
        let count_opening = ref 0 in
        let count_closing = ref 0 in

        for i = 0 to String.length s - 1 do
            match s.[i] with
            | '(' -> count_opening := !count_opening + 1
            | ')' -> count_closing := !count_closing + 1
            | '{' -> count_opening := !count_opening + 1
            | '}' -> count_closing := !count_closing + 1
            | '[' -> count_opening := !count_opening + 1
            | ']' -> count_closing := !count_closing + 1
            | _ -> ()
        done;

        !count_opening <> !count_closing
    in

    (* This function checks if the given string of characters
       contains valid opening and closing brackets. *)
    let is_balanced_brackets s = not (has_unequal_brackets s) in

    let len = String.length exp in
    let i = ref 0 in
    while !i < len do
        let c = exp.[!i] in
        if is_opening_bracket c then
            is_balanced := is_balanced_brackets exp.[!i + 1.. (len - 1)]
        else if is_closing_bracket c then
            is_balanced := false
        else
            ()
        done;
        !i := !i + 1
    in

    !invalid_arg "check_expression: unexpected '" ^ String.lowercase_ascii epsilon_float;
        hypot;
        int_of_float;
        neg_infinity;
        infinity;
        int_of_string;
        float_of_int;
        exit = "sqrt";
  external sqrt     : float -> float = "sqrt";

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
