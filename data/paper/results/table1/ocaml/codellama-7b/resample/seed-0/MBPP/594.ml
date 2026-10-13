(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
let rec diff_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> failwith "The list is empty"
  | x :: xs ->
      if xs = [] then 0
      else
        let odd_index = ref 0 in
        let find_odd () =
          if !odd_index = 0 && x mod 2 = 1 then
            !odd_index <- !odd_index + 1;
          else if !odd_index = 1 && x mod 2 = 0 then
            !odd_index <- !odd_index + 1;
          else
            ();
        in
        List.iter find_odd xs;
        if !odd_index = 0 then x else xs.(!odd_index - 1) - x;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:24: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec diff_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> 0
  | x :: xs ->
      let odd_index = ref 0 in
      let find_odd () =
        if !odd_index = 0 && x mod 2 = 1 then
          !odd_index <- !odd_index + 1;
        else if !odd_index = 1 && x mod 2 = 0 then
          !odd_index <- !odd_index + 1;
        else
          ();
      in
      List.iter find_odd xs;
      if !odd_index = 0 then x else xs.(!odd_index - 1) - x

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:22: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec diff_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> 0
  | x :: tail ->
    let odd_index = ref 0 in
    let find_odd () =
      if !odd_index = 0 && x mod 2 = 1 then
        !odd_index <- !odd_index + 1;
      else if !odd_index = 1 && x mod 2 = 0 then
        !odd_index <- !odd_index + 1;
      else
        ();
    in
    List.iter find_odd tail;
    if !odd_index = 0 then x else tail.(!odd_index - 1) - x

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:20: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec diff_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> 0
  | x :: tail ->
    let odd_index = ref 0 in
    let find_odd () =
      if !odd_index = 0 && x mod 2 = 1 then
        !odd_index <- !odd_index + 1;
      else if !odd_index = 1 && x mod 2 = 0 then
        !odd_index <- !odd_index + 1;
      else
        ();
    in
    List.iter find_odd tail;
    if !odd_index = 0 then x else tail.(!odd_index - 1) - x

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:20: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec diff_even_odd (list1 : int list) : int =
  match list1 with
  | [] -> 0
  | x :: tail ->
    let odd_index = ref 0 in
    let find_odd () =
      if !odd_index = 0 && x mod 2 = 1 then
        !odd_index <- !odd_index + 1;
      else if !odd_index = 1 && x mod 2 = 0 then
        !odd_index <- !odd_index + 1;
      else
        raise Not_found;
    in
    List.iter find_odd tail;
    if !odd_index = 0 then x else tail.(!odd_index - 1) - x

