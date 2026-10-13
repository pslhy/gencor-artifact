
let rec is_nested (string : string) : bool =
    let nested_brackets = ref 0 in
    let unclosed_brackets = ref 0 in
    for i = 0 to String.length string - 1 do
        match string.[i] with
        | '[' -> (
            nested_brackets := !nested_brackets + 1;
            unclosed_brackets := !unclosed_brackets + 1
        );
        | ']' -> (
            nested_brackets := !nested_brackets - 1;
            unclosed_brackets := !unclosed_brackets - 1
        );
    done;
    !nested_brackets = 0 && !unclosed_brackets >= 0

and is_subsequence_nested (string : string) : bool =
    let is_nested = ref false in
    let n = String.length string in
    let i = ref 0 in
    while !i < n do
        if string.[!i] = '[' then (
            is_nested := true;
            i := !i + 1
        ) else if string.[!i] = ']' then (
            if !is_nested then (
                (* found a nested bracket *)
                i := !i + 1;
                is_nested := false
            ) else (
                (* found an unmatched closing bracket *)
                i := !i + 1;
                raise (Failure "Unmatched closing bracket")
            )
        ) else (
            i := !i + 1
        )
    done;
    !is_nested

let is_nested (string : string) : bool =
    is_subsequence_nested string && is_nested string

and is_subsequence_nested (string : string) : bool =
    let is_nested = ref false in
    let n = String.length string in
    let i = ref 0 in
    while !i < n do
        if string.[!i] = '[' then (
            is_nested := true;
            i := !i + 1
        ) else if string.[!i] = ']' then (
            if !is_nested then (
                (* found a nested bracket *)
                i := !i + 1;
                is_nested := false
            ) else (
                (* found an unmatched closing bracket *)
                i := !i + 1;
                raise (Failure "Unmatched closing bracket")
            )
        ) else (
            i := !i + 1
        )
    done;
    !is_nested

let rec find_nested_bracket (string : string) : int =
    let nested_brackets = ref 0 in
    let unclosed_brackets = ref 0 in
    for i = 0 to String.length string - 1 do
        match string.[i] with
        | '[' -> (
            nested_brackets := !nested_brackets + 1;
            unclosed_brackets := !unclosed_brackets + 1
        );
        | ']' -> (
            nested_brackets := !nested_brackets - 1;
            unclosed_brackets := !unclosed_brackets - 1
        );
    done;
    if !nested_brackets > 0 then !unclosed_brackets + find_nested_bracket (String.sub string 0 !unclosed_brackets) else !unclosed_brackets

and find_matching_bracket (string : string) : int =
    let i = ref 0 in
    while !i < String.length string && string.[!i] <> ']' do
        i := !i + 1
    done;
    !i

let find_index_of_nested_bracket (string : string) : int =
    let index = ref 0 in
    while !index < String.length string && string.[!index] <> '[' do
        index := !index + 1
    done;
    !index

let is_nested (string : string) : bool =
    let nested_brackets = ref 0 in
    let unclosed_brackets = ref 0 in
    let i = ref 0 in
    while !i < String.length string do
        match string.[!i] with
        | '[' -> (
            nested_brackets := !nested_brackets + 1;
            unclosed_brackets := !unclosed_brackets + 1
        );
        | ']' -> (
            nested_brackets := !nested_brackets - 1;
            unclosed_brackets := !unclosed_brackets - 1
        );
    done;
    !nested_brackets = 0 && !unclosed_brackets >= 0

let is_subsequence_nested (string : string) : bool =
    let nesting = ref 0 in
    let is_nested = ref false in
    let i = ref 0 in
    while !i < String.length string do
        if string.[!i] = '[' then (
            nesting := !nesting + 1;
            is_nested := true;
            i := !i + 1
        ) else if string.[!i] = ']' then (
            if !is_nested then (
                if !nesting = 0 then (
                    (* found a nested bracket *)
                    is_nested := false;
                    i := !i + 1
                ) else (
                    (* found a closing bracket inside a nested sequence *)
                    nesting := !nesting - 1;
                    i := !i + 1
                )
            ) else (
                (* found an unmatched closing bracket *)
                i := !i + 1;
                raise (Failure "Unmatched closing bracket")
            )
        ) else (
            i := !i + 1
        )
    done;
    !is_nested

let is_nested (string : string) : bool =
    is_subsequence_nested string && is_nested string

let rec find_nested_bracket (string : string) : int =
    let nested_brackets = ref 0 in
    let unclosed_brackets = ref 0 in
    for i = 0 to String.length string - 1 do
        match string.[i] with
        | '[' -> (
            nested_brackets := !nested_brackets + 1;
            unclosed_brackets := !unclosed_brackets + 1
        );
        | ']' -> (
            nested_brackets := !nested_brackets - 1;
            unclosed_brackets := !unclosed_brackets - 1
        );
    done;
    if !nested_brackets > 0 then !unclosed_brackets + find_nested_bracket (String.sub string 0 !unclosed_brackets) else !unclosed_brackets

and find_matching_bracket (string : string) : int =
    let i = ref 0 in
    while !i < String.length string && string.[!i] <> ']' do
        i := !i + 1
    done;
    !i

let find_index_of_nested_bracket (string : string) : int =
    let index = ref 0 in
    while !index < String.length string && string.[!index] <> '[' do
        index := !index + 1
    done;
    !index

let find_matching_bracket (string : string) : int =
    let index = ref 0 in
    while !index < String.length string && string.[!index] <> ']' do
        index := !index + 1
    done;
    !index

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function that takes a string as input which contains only square brackets. *)
(*     The function should return true if and only if there is a valid subsequence of brackets *)
(*     where at least one bracket in the subsequence is nested. *)
(*     >>> is_nested "[[]]" *)
(*     true *)
(*     >>> is_nested "[]]]]]]][[[[[]" *)
(*     false *)
(*     >>> is_nested "[][]" *)
(*     false *)
(*     >>> is_nested "[]" *)
(*     false *)
(*     >>> is_nested "[[][]]" *)
(*     true *)
(*     >>> is_nested "[[]][[" *)
(*     true *)
