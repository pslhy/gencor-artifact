(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
let rec diff_even_odd (list1 : int list) : int = 
  let rec find_first_evenOdd lst even odd = 
    match lst with
    | [] -> (even, odd)
    | h::t -> 
       if h mod 2 = 0 then find_first_evenOdd t (Some h) odd
       elif even = None then find_first_evenOdd t even (Some h)
       else (even, odd)
  in
  match find_first_evenOdd list1 None None with
  | (Some even, Some odd) -> even - odd
  | _ -> failwith "List must contain at least one even and one odd number"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:25: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec diff_even_odd (list1 : int list) : int = 
  let rec find_first_evenOdd lst (even, odd) = 
    match lst with
    | [] -> (even, odd)
    | h::t -> 
       if h mod 2 = 0 then find_first_evenOdd t (Some h, odd)
       elif even = None then find_first_evenOdd t (even, Some h)
       else (even, odd)
  in
  match find_first_evenOdd list1 (None, None) with
  | (Some even, Some odd) -> even - odd
  | _ -> failwith "List must contain at least one even and one odd number"

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:25: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec diff_even_odd (list1 : int list) : int = 
  let rec find_first_evenOdd lst (even, odd) = 
    match lst with
    | [] -> (even, odd)
    | h::t -> 
       if h mod 2 = 0 && even = None then find_first_evenOdd t (Some h, odd)
       elif h mod 2 <> 0 && odd = None then find_first_evenOdd t (even, Some h)
       else (even, odd)
  in
  match find_first_evenOdd list1 (None, None) with
  | (Some even, Some odd) -> even - odd
  | _ -> failwith "List must contain at least one even and one odd number"

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:40: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec diff_even_odd (list1 : int list) : int = 
  let rec find_first_evenOdd lst (even, odd) = 
    match lst with
    | [] -> (even, odd)
    | h::t -> 
       if h mod 2 = 0 && even = None then find_first_evenOdd t (Some h, odd)
       elif h mod 2 <> 0 && odd = None then find_first_evenOdd t (even, Some h)
       else (even, odd)
  in
  match find_first_evenOdd list1 (None, None) with
  | (Some even, Some odd) -> even - odd
  | _ -> failwith "List must contain at least one even and one odd number"
``
(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:40: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec diff_even_odd (list1 : int list) : int = 
  let rec find_first_evenOdd lst (even, odd) = 
    match lst with
    | [] -> (even, odd)
    | h::t -> 
       if h mod 2 = 0 then find_first_evenOdd t (Some h, odd)
       elif h mod 2 <> 0 then find_first_evenOdd t (even, Some h)
       else (even, odd)
  in
  match find_first_evenOdd list1 (None, None) with
  | (Some even, Some odd) -> even - odd
  | _ -> failwith "List must contain at least one even and one odd number"

