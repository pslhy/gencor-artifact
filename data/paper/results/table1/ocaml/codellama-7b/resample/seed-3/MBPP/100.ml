(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
let rec next_smallest_palindrome (num : int) : int =
  if num < 10 then num
  else
    let str = string_of_int (num) in
    let len = String.length str in
    if len = 1 then num + 1
    else
      let front = String.sub str 0 (len / 2) in
      let back = String.sub str (len / 2) (len - (len / 2)) in
      if front = back then num + 1
      else if len mod 2 = 0 && front <> back then
        let pad_len = len - 1 in
        let pad_str = String.make pad_len '0' in
        let new_str = String.make pad_len '9' in
        let result = int_of_string (pad_str ^ new_str) in
        result + 1
      else
        let pad_len = len in
        let pad_str = String.make pad_len '0' in
        let new_str = String.make pad_len '9' in
        let result = int_of_string (pad_str ^ new_str) in
        result + 1 in
      next_smallest_palindrome result

let () =
  let rec next_smallest_palindrome_check (n : int) (expected_result : int) =
    if next_smallest_palindrome n <> expected_result then
      raise (Failure ("Unexpected result for next_smallest_palindrome ("
                      ^ string_of_int n ^ "): expected "
                      ^ string_of_int expected_result
                      ^ ", but got "
                      ^ string_of_int (next_smallest_palindrome n)))

  let nums = [0; 1; 2; 3; 4; 5; 6; 7; 8; 9]
  let i = Array.length nums in
  while i >= 0 do
    next_smallest_palindrome_check nums.(i) (i + 1);
    i <- i - 1;
  done;
  ()

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:34:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_smallest_palindrome (num : int) : int =
  if num < 10 then num + 1
  else
    let str = string_of_int (num) in
    let len = String.length str in
    if len = 1 then num + 1
    else
      let front = String.sub str 0 (len / 2) in
      let back = String.sub str (len / 2) (len - (len / 2)) in
      if front = back then num + 1
      else if len mod 2 = 0 && front <> back then
        let pad_len = len - 1 in
        let pad_str = String.make pad_len '0' in
        let new_str = String.make pad_len '9' in
        let result = int_of_string (pad_str ^ new_str) in
        result + 1
      else
        let pad_len = len in
        let pad_str = string.make pad_len '0' in
        let new_str = string.make pad_len '9' in
        let result = int_of_string (pad_str ^ new_str) in
        result + 1 in
    next_smallest_palindrome result

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:23: Unbound value "string" *)
(*     Hint: Did you mean "stdin"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_smallest_palindrome (num : int) : int =
  if num < 10 then num + 1
  else
    let str = string_of_int (num) in
    let len = String.length str in
    if len = 1 then num + 1
    else
      let front = String.sub str 0 (len / 2) in
      let back = String.sub str (len / 2) (len - (len / 2)) in
      if front = back then num + 1
      else if len mod 2 = 0 && front <> back then
        let pad_len = len - 1 in
        let pad_str = String.make pad_len '0' in
        let new_str = String.make pad_len '9' in
        let result = int_of_string (pad_str ^ new_str) in
        result + 1
      else
        let pad_len = len in
        let pad_str = String.make pad_len '0' in
        let new_str = String.make pad_len '9' in
        let result = int_of_string (pad_str ^ new_str) in
        result + 1 in
    next_smallest_palindrome result

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:23:30: Unbound value "result" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_smallest_palindrome (num : int) : int =
  if num < 10 then num + 1
  else
    let str = string_of_int (num) in
    let len = String.length str in
    let front = String.sub str 0 (len / 2) in
    let back = String.sub str (len / 2) (len - (len / 2)) in
    if front = back then num + 1
    else if len mod 2 = 0 && front <> back then
      let pad_len = len - 1 in
      let pad_str = String.make pad_len '0' in
      let new_str = String.make pad_len '9' in
      let result = int_of_string (pad_str ^ new_str) in
      result + 1
    else
      let pad_len = len in
      let pad_str = String.make pad_len '0' in
      let new_str = String.make pad_len '9' in
      let result = int_of_string (pad_str ^ new_str) in
      result + 1 in
    next_smallest_palindrome result

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:21:30: Unbound value "result" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_smallest_palindrome (num : int) : int =
  if num < 10 then num + 1
  else
    let str = string_of_int (num) in
    let len = String.length str in
    let front = String.sub str 0 (len / 2) in
    let back = String.sub str (len / 2) (len - (len / 2)) in
    if front = back then num + 1
    else if len mod 2 = 0 && front <> back then
      let pad_len = len - 1 in
      let pad_str = String.make pad_len '0' in
      let new_str = String.make pad_len '9' in
      let result = int_of_string (pad_str ^ new_str) in
      result + 1
    else
      let pad_len = len in
      let pad_str = String.make pad_len '0' in
      let new_str = String.make pad_len '9' in
      let result = int_of_string (pad_str ^ new_str) in
      result + 1 in
    next_smallest_palindrome result

