(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
let rec magic_square_test (my_matrix : int list list) : bool =
  let row_sums = List.map (fun row -> List.fold_left ( + ) 0 row) my_matrix
  let column_sums = List.fold_left (fun acc column ->
      let cur_sum = List.fold_left ( + ) 0 column
      if List.mem cur_sum acc then false else cur_sum :: acc
    ) [] (List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix |> List.transpose)
  in
  let diag_sums1 = List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix |> List.transpose |> List.map (fun row -> List.fold_left ( + ) 0 row)
  let diag_sums2 = List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix |> List.transpose |> List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(j).(i)) col) |> List.transpose |> List.map (fun row -> List.fold_left ( + ) 0 row)
  in
  List.mem (List.fold_left ( + ) 0 my_matrix.(0)) row_sums && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) column_sums && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) diag_sums1 && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) diag_sums2

let magic_square (n : int) : int list list =
  let rec generate_row k =
    if k = n then []
    else (generate_row (k + 1)) @ [k]
  in
  let rec generate_list i =
    if i = n then []
    else (generate_list (i + 1)) @ [generate_row 0]
  in
  generate_list 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool =
  let row_sums = List.map (fun row -> List.fold_left ( + ) 0 row) my_matrix
  let column_sums = List.fold_left (fun acc column ->
      let cur_sum = List.fold_left ( + ) 0 column
      if List.mem cur_sum acc then false else cur_sum :: acc
    ) [] (List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix)
  in
  let diag_sums1 = List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix |> List.transpose
  let diag_sums2 = List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix |> List.transpose
  in
  List.mem (List.fold_left ( + ) 0 my_matrix.(0)) row_sums && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) column_sums && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) diag_sums1 && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) diag_sums2

in
  let my_matrix =
  [
    [4; 9; 2];
    [3; 5; 7];
    [8; 1; 6];
  ]
  in
  magix_square_test my_matrix

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool =
  let row_sums = List.map (fun row -> List.fold_left ( + ) 0 row) my_matrix
  let column_sums = List.fold_left (fun acc column ->
      let cur_sum = List.fold_left ( + ) 0 column
      if List.mem cur_sum acc then false else cur_sum :: acc
    ) [] (List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix)
  in
  let diag_sums1 = List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix |> List.transpose
  let diag_sums2 = List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix |> List.transpose
  in
  List.mem (List.fold_left ( + ) 0 my_matrix.(0)) row_sums && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) column_sums && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) diag_sums1 && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) diag_sums2

in
  let my_matrix =
  [
    [1; 2; 3];
    [4; 5; 9];
    [8; 3; 4];
  ]
  in
  magic_square_test my_matrix

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool =
  let row_sums = List.map (fun row -> List.fold_left ( + ) 0 row) my_matrix
  let column_sums = List.fold_left (fun acc column ->
      let cur_sum = List.fold_left ( + ) 0 column
      if List.mem cur_sum acc then false else cur_sum :: acc
    ) [] (List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix)
  in
  let diag_sums1 = List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix |> List.transpose
  let diag_sums2 = List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix |> List.transpose
  in
  List.mem (List.fold_left ( + ) 0 my_matrix.(0)) row_sums && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) column_sums && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) diag_sums1 && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) diag_sums2

in
  let my_matrix =
  [
    [1; 2; 3];
    [4; 5; 9];
    [8; 3; 4];
  ]
  in
  magic_square_test my_matrix

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool =
  let row_sums = List.map (fun row -> List.fold_left ( + ) 0 row) my_matrix
  let column_sums = List.fold_left (fun acc column ->
      let cur_sum = List.fold_left ( + ) 0 column
      if List.mem cur_sum acc then false else cur_sum :: acc
    ) [] (List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix)
  in
  let diag_sums1 = List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix |> List.transpose
  let diag_sums2 = List.mapi (fun i col -> List.map (fun _ j -> my_matrix.(i).(j)) col) my_matrix |> List.transpose
  in
  List.mem (List.fold_left ( + ) 0 my_matrix.(0)) row_sums && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) column_sums && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) diag_sums1 && List.mem (List.fold_left ( + ) 0 my_matrix.(0)) diag_sums2

in
  let my_matrix =
  [
    [1; 2; 3];
    [4; 5; 9];
    [8; 3; 4];
  ]
  in
  magic_square_test my_matrix

