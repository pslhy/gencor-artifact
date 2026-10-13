(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13. *)
(*     >>> fizz_buzz 50 *)
(*     0 *)
(*     >>> fizz_buzz 78 *)
(*     2 *)
(*     >>> fizz_buzz 79 *)
(*     3 *)
let rec fizz_buzz (n : int) : int = 
  let rec count_sevens (i : int) (count : int) : int = 
    if i >= n then count
    else 
      let new_count = if i mod 11 = 0 || i mod 13 = 0 then count + (string_of_int i |> String.count (fun c -> c = '7')) else count in
      count_sevens (i + 1) new_count
  in
  count_sevens 1 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:88: Unbound value "String.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int = 
  let rec count_sevens (i : int) (count : int) : int = 
    if i >= n then count
    else 
      let new_count = if i mod 11 = 0 || i mod 13 = 0 then count + (String.length (String.filter (fun c -> c = '7') (string_of_int i))) else count in
      count_sevens (i + 1) new_count
  in
  count_sevens 1 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:84: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int = 
  let rec count_sevens (i : int) (count : int) : int = 
    if i >= n then count
    else 
      let new_count = if i mod 11 = 0 || i mod 13 = 0 then count + (String.length (String.filter (fun c -> c = '7') (string_of_int i))) else count in
      count_sevens (i + 1) new_count
  in
  count_sevens 1 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:84: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int = 
  let rec count_sevens (i : int) (count : int) : int = 
    if i >= n then count
    else 
      let new_count = if i mod 11 = 0 || i mod 13 = 0 then count + (List.length (List.filter (fun c -> c = '7') (String.to_list (string_of_int i)))) else count in
      count_sevens (i + 1) new_count
  in
  count_sevens 1 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:114: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int = 
  let rec count_sevens (i : int) (count : int) : int = 
    if i >= n then count
    else 
      let new_count = if i mod 11 = 0 || i mod 13 = 0 then count + (List.length (List.filter (fun c -> c = '7') (StringLabels.to_list (string_of_int i)))) else count in
      count_sevens (i + 1) new_count
  in
  count_sevens 1 0

