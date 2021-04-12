#define buildTree_create
//

buildTree_name[0] = 'Null';
buildTree_image[0] = 0;
buildTree_needs[0,0] = -1;

buildTree_addItem('Starter',0,0);
buildTree_addItem('Skill1',0,1);
buildTree_addItem('Skill3',0,array(1,2));

buildTree_startingPoint[0] = 0;
buildTree_startingPoint[1] = 0;



#define buildTree_addItem
//buildTree_addItem(name,image,needs)

//var array_n = array_height_2d(buildTree_name)
var array_n = array_length_2d(buildTree_name,0)

needs_array = argument[2];
var needs_length = array_length_1d(needs_array);

buildTree_name[array_n] = argument[0];
buildTree_image[array_n] = argument[1];

var n = 0;
while(n < needs_length)
{
    buildTree_needs[array_n,n] = needs_array[n];
    n = n + 1;
}

if(needs_length == 0)
{
    buildTree_needs[array_n,0] = needs_array;
}

needs_array = 0;

#define buildTree_calculatePositions
//calculates the x,y positions of the current buildTree

// check how many connections to each node

 