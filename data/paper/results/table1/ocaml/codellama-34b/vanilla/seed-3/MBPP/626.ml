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


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
