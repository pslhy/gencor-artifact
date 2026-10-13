(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
let rec max_Product (arr : int list) :  int * int =
  if(arr.Length <= 1)
  {
    -1, -1
  }
  else
  {
    let max_Pair = arr.Head * arr.Tail.Head in
    let rest_List = arr.Tail.Tail in
    match rest_List with
    []-> (max_Pair, 1)
    | lst ->
        let (res, index) = max_Product (lst) in
        if(res > max_Pair)
        {
          (res, index + 1)
        }
        else
        {
          (max_Pair, 1)
        }
  }
}

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Product (arr : int list) :  int * int =
  if(arr.Length <= 1)
  {
    -1, -1
  }
  else
  {
    let max_Pair = arr.Head * arr.Tail.Head in
    let rest_List = arr.Tail.Tail in
    match rest_List with
    []-> (max_Pair, 1)
    | lst ->
        let (res, index) = max_Product lst in
        if(res > max_Pair)
        {
          (res, index + 1)
        }
        else
        {
          (max_Pair, 1)
        }
  }

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Product (arr : int list) :  int * int =
  if(arr.Length <= 1) then
    -1, -1
  else
    let max_Pair = (arr.Head, arr.Tail.Head) in
    let rest_List = arr.Tail.Tail in
    match rest_List with
    | [] -> (max_Pair, 1)
    | lst ->
        let (res, index) = max_Product lst in
        if(res > max_Pair) then
          (res, index + 1)
        else
          (max_Pair, 1)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Product (arr : int list) :  int * int =
  if(arr.Length <= 1) then
    -1, -1
  else
    let max_Pair = (arr.Head, arr.Tail.Head) in
    let rest_List = arr.Tail.Tail in
    match rest_List with
    | [] -> (max_Pair, 1)
    | lst ->
        let (res, index) = max_Product lst in
        if(res > max_Pair) then
          (res, index + 1)
        else
          (max_Pair, 1)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Product (arr : int list) :  int * int =
  if (arr.Length <= 1) then
    (-1, -1)
  else
    let (curr_max, curr_index) = (arr.Head, 1) in
    let rec loop (arr : int list) (curr_max : int) (curr_index : int) : int * int =
      if (arr.Length == 0) then
        (curr_max, curr_index)
      else
        let (next_max, next_index) = (arr.Head, curr_index + 1) in
        if (next_max > curr_max) then
          loop (arr.Tail) (next_max) (next_index)
        else
          loop (arr.Tail) (curr_max) (curr_index)
    in
    loop (arr.Tail) (curr_max) (curr_index)

