(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
let rec find_length (string : string) : int = 
    (* Declare and initialize local variables for the starting index of the current substring and the maximum length *)
    let rec loop : int = 0 in 
    let max_length : int = 0 in 
    (* Base case: Substring of length 1 *)
    if String.length string = 1 then string 1 ; 
    
    (* Loop through the substring and compute the length of the current substring*)
    loop <- String.length string - 1 ; 
    let curr_length := 0 in 
    for i := 0 to String.length string - 1
        let char := String.get string i in 
        if char = '0' then curr_length += 1
        else curr_length

    (* Update the maximum length and starting index of the current substring if necessary *)
    if curr_length > max_length then max_length := curr_length ; 
    loop := i + 1

    (* Return the maximum length if the starting index is greater than or equal to the length of the string *)
    if loop > String.length string then max_length at

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:21: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
  (* Declare and initialize local variables for the starting index of the current substring and the maximum length *)
  let start_index = 0 in
  let max_length = 0 in
  (* Base case: Substring of length 1 *)
  if String.length string = 1 then string.(0) = '0' else (
    (* Loop through the substring and compute the length of the current substring*)
    for i = 0 to String.length string - 1 do
      start_index := i + 1
    done
    (* Return the maximum length if the starting index is greater than or equal to the length of the string *)
    if start_index >= String.length string then max_length else
    (
      (* Update the maximum length and starting index of the current substring if necessary *)
      if string.(i) = '0' then max_length := max (max_length + 1) start_index else
      start_index := max (start_index - 1) 0;
      max_length
    )

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:5: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
  let start_index = 0 in
  let max_length = 0 in
  if String.length string = 1 then string.(0) = '0' else
  (
    for i = 0 to String.length string - 1 do
      start_index := i + 1
    done
    if start_index >= String.length string then max_length else
    (
      if string.(i) = '0' then max_length := max (max_length + 1) start_index else
      start_index := max (start_index - 1) 0;
      max_length
    )
  )

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:5: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
    let start_index = 0 in
    let max_length = 0 in
    if String.length string = 1 then string.(0) = '0' else
    (
        for i = 0 to String.length string - 1 do
            start_index := i + 1
        done in
        if start_index >= String.length string then max_length else
        (
            if string.(i) = '0' then max_length := max (max_length + 1) start_index else
            start_index := max (start_index - 1) 0;
            max_length
        )
    )

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:14: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
    let start_index = 0 in
    let max_length = 0 in
    if String.length string = 1 then string.(0) = '0' else
    (
        for i = 0 to String.length string - 1 do
            start_index := i + 1
        done;
        if start_index >= String.length string then max_length else
        (
            if string.(i) = '0' then max_length := max (max_length + 1) start_index else
            start_index := max (start_index - 1) 0;
            max_length
        )
    )

