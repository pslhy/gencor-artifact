(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the intersection of two lists. *)
let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list = 
    let (nums1 : int list ref) = ref [] in
    let (nums2 : int list ref) = ref [] in
    Array.iter (fun x -> nums1 := !nums1 @ [x]) (Array.of_list array_nums1);
    Array.iter (fun x -> nums2 := !nums2 @ [x]) (Array.of_list array_nums2);
    List.sort_uniq compare !nums1 && List.sort_uniq compare !nums2;
    List.intersect !nums1 !nums2
end;

let intersection_list (list_nums1 : int list) (list_nums2 : int list) : int list =
    let (nums1 : int list ref) = ref [] in
    let (nums2 : int list ref) = ref [] in
    List.iter (fun x -> nums1 := !nums1 @ [x]) list_nums1;
    List.iter (fun x -> nums2 := !nums2 @ [x]) list_nums2;
    List.sort_uniq compare !nums1;
    List.sort_uniq compare !nums2;
    List.intersect !nums1 !nums2
end;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list =
  let nums1 = List.map array_nums1 ~f:List.mem array_nums2 in
  let nums2 = List.map array_nums2 ~f:List.mem array_nums1 in
  List.filter_map nums1 ~f:(fun (n, m) -> if n = m then Some n else None)

