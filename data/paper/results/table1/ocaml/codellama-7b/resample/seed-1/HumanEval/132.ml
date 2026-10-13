(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
                break
            ) else (
                (* found a closing bracket without an opening bracket,
                   therefore not a valid subsequence *)
                i := n;
                is_nested := false
            )
        ) else (
            (* advance to the next character *)
            i := !i + 1
        )
    done;
    !is_nested

let is_nested (string : string) : bool =
    let n = String.length string in
    let i = ref 0 in
    let j = ref 0 in
    while !i < n && !j > n do
        if string.[!i] = '[' then (
            j := !j + 1;
            i := !i + 1
        ) else if string.[!i] = ']' then (
            j := !j - 1
        ) else (
            (* advance to the next character *)
            i := !i + 1
        )
    done;
    !j <= !i

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:29:17: Unbound value "break" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_nested (string : string) : bool =
  let n = String.length string in
  let i = ref 0 in
  let j = ref 0 in
  while !i < n && !j < n do
    if string.[!i] = '[' then (
      j := !j + 1;
      i := !i + 1
    ) else if string.[!i] = ']' then (
      j := !j - 1
    ) else (
      (* advance to the next character *)
      i := !i + 1
    )
  done;
  !j <= !i

