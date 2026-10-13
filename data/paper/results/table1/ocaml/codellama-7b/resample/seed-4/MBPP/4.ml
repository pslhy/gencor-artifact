(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  if n > 0 && nums <> [] then
    let min_heap = OCaml.List.heap_create (fun _ ->
         fun n -> n
       )
       (List.take nums n)
     in
     let rec consume heap = function
       | [] -> ()
       | h :: t ->
         let heap = OCaml.List.heap_add heap h in
         if OCaml.List.heap_size heap > n then
           let _ = OCaml.List.heap_pop heap in
           consume heap t
         else
           consume heap t
     in
     consume heap nums;
     OCaml.List.heap_to_list min_heap
  else
    []

let find_n_largest (nums : int list) (n : int) : int list =
  heap_queue_largest nums n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:20: Unbound module "OCaml" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  if n > 0 && nums <> [] then
    let min_heap = List.map List.nth nums [0 .. n - 1] in
    let rec consume heap = function
      | [] -> ()
      | h :: t ->
        let heap = List.concat [head h; tail t] in
        if List.length heap > n then
          let _ = lists.drop 0 [head h] in
          consume heap t
        else
          consume heap t
    in
    consume heap nums;
    List.map List.nth min_heap [0 .. n - 1]
  else
    []

let find_n_largest (nums : int list) (n : int) : int list =
  heap_queue_largest nums n

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:46: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  if n > 0 && nums <> [] then
    let min_heap = List.map List.nth nums [0 .. n - 1] in
    let rec consume heap = function
      | [] -> ()
      | h :: t ->
        let heap = List.concat [head h; tail t] in
        if List.length heap > n then
          let _ = List.drop 0 [head h] in
          consume heap t
        else
          consume heap t
    in
    consume heap nums;
    List.map List.nth min_heap [0 .. n - 1]
  else
    []

let find_n_largest (nums : int list) (n : int) : int list =
  heap_queue_largest nums n

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:46: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  if n > 0 && nums <> [] then
    let min_heap = List.map List.nth nums [0 .. n - 1] in
    let rec consume heap = function
      | [] -> ()
      | h :: t ->
        let heap = List.concat [head h; tail t] in
        if List.length heap > n then
          let _ = List.drop 0 [head h] in
          consume heap t
        else
          consume heap t
    in
    consume heap nums;
    List.map List.nth min_heap [0 .. n - 1]
  else
    []

let find_n_largest (nums : int list) (n : int) : int list =
  heap_queue_largest nums n

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:46: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  if n > 0 && nums <> [] then
    let min_heap = List.map List.nth nums [0; n - 1] in
    let rec consume heap = function
      | [] -> ()
      | h :: t ->
        let heap = List.concat [head h; tail t] in
        if List.length heap > n then
          let _ = List.drop 0 [head h] in
          consume heap t
        else
          consume heap t
    in
    consume heap nums;
    List.map List.nth min_heap [0 .. n - 1]
  else
    []

let find_n_largest (nums : int list) (n : int) : int list =
  heap_queue_largest nums n

