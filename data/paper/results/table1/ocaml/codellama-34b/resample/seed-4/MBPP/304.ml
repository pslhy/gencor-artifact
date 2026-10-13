(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int = 
    (*
     * Find the element at the specified index after performing the specified number of rotations on the array.
     *
     * Parameters:
     * arr : int list - the input array
     * ranges : int list list - the ranges to rotate, where each range is represented by a pair of indices
     * rotations : int - the number of rotations to perform
     * index : int - the index to find
     *
     * Returns:
     * int - the element at the specified index after the rotations
     *
     * Raises:
     * None -
     *)
    if rotations <= 0 || index < 0 || index >= (Array.length arr) then
      (* No rotations needed or invalid index *)
      0
    else 
      (* Rotate the array by the specified number of rotations *)
      let rotated_array = rotations ``- Array.copy arr
    
      (* Find the element at the specified index after rotations *)
      let element = rotated_array.(index)
    
      (* Return the element *)
      element

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:22:38: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
  if rotations <= 0 || index < 0 || index >= (Array.length arr) then
    0
  else
    let rotated_array = Array.sub arr 0 (Array.length arr) in
    let element = rotated_array.(index) in
    element

