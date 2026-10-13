(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
let rec triangle_area (r : int) : int option =
  if r < 1 then
    None
  else if r = 1 then
    Some(1)
  else
    let smaller = triangle_area (r - 1) in
    match smaller with
    | None -> None
    | Some(n) -> Some(n + (r * r - (r - 1) * (r - 1)))

//Tests
assert (triangle_area 1 = Some(1));
assert (triangle_area 2 = Some(5));
assert (triangle_area 3 = Some(13));
assert (triangle_area 4 = Some(25));
assert (triangle_area 5 = Some(41));

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec triangle_area (r : int) : int option =
  if r < 1 then
    None
  else if r = 1 then
    Some(1)
  else
    let smaller = triangle_area (r - 1) in
    match smaller with
    | None -> None
    | Some(n) -> Some(n + (r * r - (r - 1) * (r - 1)))

let test_ triangle_area () =
  assert (triangle_area 1 = Some(1));
  assert (triangle_area 2 = Some(5));
  assert (triangle_area 3 = Some(13));
  assert (triangle_area 4 = Some(25));
  assert (triangle_area 5 = Some(41));

let () =
  test_triangle_area ()

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:21:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec triangle_area (r : int) : int option =
  if r < 1 then
    None
  else if r = 1 then
    Some(1)
  else
    let smaller = triangle_area (r - 1) in
    match smaller with
    | None -> None
    | Some(n) -> Some(n + (r * r - (r - 1) * (r - 1)))

let test_triangle_area () =
  assert (triangle_area 1 = Some(1));
  assert (triangle_area 2 = Some(5));
  assert (triangle_area 3 = Some(13));
  assert (triangle_area 4 = Some(25));
  assert (triangle_area 5 = Some(41))

let () = test_triangle_area ()

